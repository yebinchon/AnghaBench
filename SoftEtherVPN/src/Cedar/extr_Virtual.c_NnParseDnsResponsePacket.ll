; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnParseDnsResponsePacket.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_NnParseDnsResponsePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NnParseDnsResponsePacket(i32* %0, i64 %1, %struct.TYPE_12__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__*, align 8
  store i32* %0, i32** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %6, align 8
  %17 = load i32*, i32** %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = call %struct.TYPE_14__* @NewBufFromMemory(i32* %17, i64 %18)
  store %struct.TYPE_14__* %19, %struct.TYPE_14__** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %21 = call i32 @ReadBuf(%struct.TYPE_14__* %20, %struct.TYPE_13__* %9, i32 8)
  %22 = sext i32 %21 to i64
  %23 = icmp eq i64 %22, 8
  br i1 %23, label %24, label %92

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @Endian16(i32 %26)
  store i64 %27, i64* %10, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %9, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @Endian16(i32 %29)
  store i64 %30, i64* %11, align 8
  store i64 0, i64* %12, align 8
  br label %31

31:                                               ; preds = %45, %24
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %31
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %37 = call %struct.TYPE_14__* @NnReadDnsRecord(%struct.TYPE_14__* %36, i32 0, i32* null, i32* null)
  store %struct.TYPE_14__* %37, %struct.TYPE_14__** %13, align 8
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %39 = icmp ne %struct.TYPE_14__* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %42 = call i32 @FreeBuf(%struct.TYPE_14__* %41)
  br label %44

43:                                               ; preds = %35
  br label %93

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load i64, i64* %12, align 8
  %47 = add nsw i64 %46, 1
  store i64 %47, i64* %12, align 8
  br label %31

48:                                               ; preds = %31
  store i64 0, i64* %12, align 8
  br label %49

49:                                               ; preds = %88, %48
  %50 = load i64, i64* %12, align 8
  %51 = load i64, i64* %11, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %53, label %91

53:                                               ; preds = %49
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %55 = call %struct.TYPE_14__* @NnReadDnsRecord(%struct.TYPE_14__* %54, i32 1, i32* %14, i32* %15)
  store %struct.TYPE_14__* %55, %struct.TYPE_14__** %16, align 8
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %57 = icmp ne %struct.TYPE_14__* %56, null
  br i1 %57, label %58, label %86

58:                                               ; preds = %53
  %59 = load i32, i32* %14, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %83

61:                                               ; preds = %58
  %62 = load i32, i32* %15, align 4
  %63 = icmp eq i32 %62, 1
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 4
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  store i32 1, i32* %8, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %71 = icmp ne %struct.TYPE_12__* %70, null
  br i1 %71, label %72, label %82

72:                                               ; preds = %69
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = call i32 @Zero(%struct.TYPE_12__* %73, i32 4)
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @Copy(i32 %77, i32 %80, i32 4)
  br label %82

82:                                               ; preds = %72, %69
  br label %83

83:                                               ; preds = %82, %64, %61, %58
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %85 = call i32 @FreeBuf(%struct.TYPE_14__* %84)
  br label %87

86:                                               ; preds = %53
  br label %93

87:                                               ; preds = %83
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %12, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %12, align 8
  br label %49

91:                                               ; preds = %49
  br label %92

92:                                               ; preds = %91, %3
  br label %93

93:                                               ; preds = %92, %86, %43
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %95 = call i32 @FreeBuf(%struct.TYPE_14__* %94)
  %96 = load i32, i32* %8, align 4
  ret i32 %96
}

declare dso_local %struct.TYPE_14__* @NewBufFromMemory(i32*, i64) #1

declare dso_local i32 @ReadBuf(%struct.TYPE_14__*, %struct.TYPE_13__*, i32) #1

declare dso_local i64 @Endian16(i32) #1

declare dso_local %struct.TYPE_14__* @NnReadDnsRecord(%struct.TYPE_14__*, i32, i32*, i32*) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_14__*) #1

declare dso_local i32 @Zero(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
