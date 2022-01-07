; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildPayloadList.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Proto_IkePacket.c_IkeBuildPayloadList.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32 }

@IKE_PAYLOAD_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_16__* @IkeBuildPayloadList(i32* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_15__, align 4
  %9 = alloca %struct.TYPE_16__*, align 8
  store i32* %0, i32** %3, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %2, align 8
  br label %79

13:                                               ; preds = %1
  %14 = call %struct.TYPE_16__* (...) @NewBuf()
  store %struct.TYPE_16__* %14, %struct.TYPE_16__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %72, %13
  %16 = load i32, i32* %5, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @LIST_NUM(i32* %17)
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %20, label %75

20:                                               ; preds = %15
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* %5, align 4
  %23 = call %struct.TYPE_14__* @LIST_DATA(i32* %21, i32 %22)
  store %struct.TYPE_14__* %23, %struct.TYPE_14__** %6, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %7, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @LIST_NUM(i32* %25)
  %27 = sub nsw i32 %26, 1
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %34

29:                                               ; preds = %20
  %30 = load i32*, i32** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = add nsw i32 %31, 1
  %33 = call %struct.TYPE_14__* @LIST_DATA(i32* %30, i32 %32)
  store %struct.TYPE_14__* %33, %struct.TYPE_14__** %7, align 8
  br label %34

34:                                               ; preds = %29, %20
  %35 = call i32 @Zero(%struct.TYPE_15__* %8, i32 8)
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = icmp ne %struct.TYPE_14__* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %34
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  br label %46

43:                                               ; preds = %34
  %44 = load i32, i32* @IKE_PAYLOAD_NONE, align 4
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 1
  store i32 %44, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %38
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %48 = call %struct.TYPE_16__* @IkeBuildPayload(%struct.TYPE_14__* %47)
  store %struct.TYPE_16__* %48, %struct.TYPE_16__** %9, align 8
  %49 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %50 = icmp ne %struct.TYPE_16__* %49, null
  br i1 %50, label %51, label %71

51:                                               ; preds = %46
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %55, 8
  %57 = call i32 @Endian16(i64 %56)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %60 = call i32 @WriteBuf(%struct.TYPE_16__* %59, %struct.TYPE_15__* %8, i32 8)
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %63, align 8
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @WriteBuf(%struct.TYPE_16__* %61, %struct.TYPE_15__* %64, i32 %67)
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %70 = call i32 @FreeBuf(%struct.TYPE_16__* %69)
  br label %71

71:                                               ; preds = %51, %46
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %15

75:                                               ; preds = %15
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = call i32 @SeekBuf(%struct.TYPE_16__* %76, i32 0, i32 0)
  %78 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_16__* %78, %struct.TYPE_16__** %2, align 8
  br label %79

79:                                               ; preds = %75, %12
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  ret %struct.TYPE_16__* %80
}

declare dso_local %struct.TYPE_16__* @NewBuf(...) #1

declare dso_local i32 @LIST_NUM(i32*) #1

declare dso_local %struct.TYPE_14__* @LIST_DATA(i32*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_15__*, i32) #1

declare dso_local %struct.TYPE_16__* @IkeBuildPayload(%struct.TYPE_14__*) #1

declare dso_local i32 @Endian16(i64) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_16__*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_16__*) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_16__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
