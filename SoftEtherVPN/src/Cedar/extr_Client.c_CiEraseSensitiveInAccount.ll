; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiEraseSensitiveInAccount.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Client.c_CiEraseSensitiveInAccount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }

@CLIENT_AUTHTYPE_PASSWORD = common dso_local global i64 0, align 8
@CLIENT_AUTHTYPE_PLAIN_PASSWORD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CiEraseSensitiveInAccount(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %8 = icmp eq %struct.TYPE_17__* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %85

10:                                               ; preds = %1
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = call %struct.TYPE_16__* @CiCfgToAccount(%struct.TYPE_17__* %11)
  store %struct.TYPE_16__* %12, %struct.TYPE_16__** %4, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %14 = icmp eq %struct.TYPE_16__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %85

16:                                               ; preds = %10
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @CLIENT_AUTHTYPE_PASSWORD, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %16
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @Zero(i32 %29, i32 4)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @ClearStr(i32 %35, i32 4)
  br label %59

37:                                               ; preds = %16
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @CLIENT_AUTHTYPE_PLAIN_PASSWORD, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %37
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ClearStr(i32 %50, i32 4)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ClearStr(i32 %56, i32 4)
  br label %58

58:                                               ; preds = %45, %37
  br label %59

59:                                               ; preds = %58, %24
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %61 = call %struct.TYPE_17__* @CiAccountToCfg(%struct.TYPE_16__* %60)
  store %struct.TYPE_17__* %61, %struct.TYPE_17__** %5, align 8
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %63 = icmp ne %struct.TYPE_17__* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  store i32 1, i32* %6, align 4
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %66 = call i32 @ClearBuf(%struct.TYPE_17__* %65)
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @WriteBuf(%struct.TYPE_17__* %67, i32 %70, i32 %73)
  %75 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %76 = call i32 @SeekBuf(%struct.TYPE_17__* %75, i32 0, i32 0)
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %78 = call i32 @FreeBuf(%struct.TYPE_17__* %77)
  br label %79

79:                                               ; preds = %64, %59
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %81 = call i32 @CiFreeClientCreateAccount(%struct.TYPE_16__* %80)
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %83 = call i32 @Free(%struct.TYPE_16__* %82)
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %2, align 4
  br label %85

85:                                               ; preds = %79, %15, %9
  %86 = load i32, i32* %2, align 4
  ret i32 %86
}

declare dso_local %struct.TYPE_16__* @CiCfgToAccount(%struct.TYPE_17__*) #1

declare dso_local i32 @Zero(i32, i32) #1

declare dso_local i32 @ClearStr(i32, i32) #1

declare dso_local %struct.TYPE_17__* @CiAccountToCfg(%struct.TYPE_16__*) #1

declare dso_local i32 @ClearBuf(%struct.TYPE_17__*) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @SeekBuf(%struct.TYPE_17__*, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_17__*) #1

declare dso_local i32 @CiFreeClientCreateAccount(%struct.TYPE_16__*) #1

declare dso_local i32 @Free(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
