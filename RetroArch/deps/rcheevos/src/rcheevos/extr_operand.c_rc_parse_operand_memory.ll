; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_memory.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/rcheevos/src/rcheevos/extr_operand.c_rc_parse_operand_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i8* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i64 }

@RC_OPERAND_DELTA = common dso_local global i8* null, align 8
@RC_OPERAND_ADDRESS = common dso_local global i8* null, align 8
@RC_OPERAND_PRIOR = common dso_local global i8* null, align 8
@RC_INVALID_MEMORY_OPERAND = common dso_local global i32 0, align 4
@RC_MEMSIZE_BIT_0 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_1 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_2 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_3 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_4 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_5 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_6 = common dso_local global i8 0, align 1
@RC_MEMSIZE_BIT_7 = common dso_local global i8 0, align 1
@RC_MEMSIZE_LOW = common dso_local global i8 0, align 1
@RC_MEMSIZE_HIGH = common dso_local global i8 0, align 1
@RC_MEMSIZE_8_BITS = common dso_local global i8 0, align 1
@RC_MEMSIZE_24_BITS = common dso_local global i8 0, align 1
@RC_MEMSIZE_32_BITS = common dso_local global i8 0, align 1
@RC_MEMSIZE_16_BITS = common dso_local global i8 0, align 1
@RC_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, i8**, %struct.TYPE_8__*)* @rc_parse_operand_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rc_parse_operand_memory(%struct.TYPE_9__* %0, i8** %1, %struct.TYPE_8__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i8** %1, i8*** %6, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %7, align 8
  %13 = load i8**, i8*** %6, align 8
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  store i8 0, i8* %11, align 1
  %15 = load i8*, i8** %8, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %8, align 8
  %17 = load i8, i8* %15, align 1
  %18 = sext i8 %17 to i32
  switch i32 %18, label %31 [
    i32 100, label %19
    i32 68, label %19
    i32 98, label %23
    i32 66, label %23
    i32 112, label %27
    i32 80, label %27
  ]

19:                                               ; preds = %3, %3
  %20 = load i8*, i8** @RC_OPERAND_DELTA, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  br label %37

23:                                               ; preds = %3, %3
  %24 = load i8*, i8** @RC_OPERAND_ADDRESS, align 8
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  store i8 1, i8* %11, align 1
  br label %37

27:                                               ; preds = %3, %3
  %28 = load i8*, i8** @RC_OPERAND_PRIOR, align 8
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  br label %37

31:                                               ; preds = %3
  %32 = load i8*, i8** @RC_OPERAND_ADDRESS, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 -1
  store i8* %36, i8** %8, align 8
  br label %37

37:                                               ; preds = %31, %27, %23, %19
  %38 = load i8*, i8** %8, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %8, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 48
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @RC_INVALID_MEMORY_OPERAND, align 4
  store i32 %44, i32* %4, align 4
  br label %130

45:                                               ; preds = %37
  %46 = load i8*, i8** %8, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp ne i32 %48, 120
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i8*, i8** %8, align 8
  %52 = load i8, i8* %51, align 1
  %53 = sext i8 %52 to i32
  %54 = icmp ne i32 %53, 88
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @RC_INVALID_MEMORY_OPERAND, align 4
  store i32 %56, i32* %4, align 4
  br label %130

57:                                               ; preds = %50, %45
  %58 = load i8*, i8** %8, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %8, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %8, align 8
  %62 = load i8, i8* %60, align 1
  %63 = sext i8 %62 to i32
  switch i32 %63, label %90 [
    i32 109, label %64
    i32 77, label %64
    i32 110, label %66
    i32 78, label %66
    i32 111, label %68
    i32 79, label %68
    i32 112, label %70
    i32 80, label %70
    i32 113, label %72
    i32 81, label %72
    i32 114, label %74
    i32 82, label %74
    i32 115, label %76
    i32 83, label %76
    i32 116, label %78
    i32 84, label %78
    i32 108, label %80
    i32 76, label %80
    i32 117, label %82
    i32 85, label %82
    i32 104, label %84
    i32 72, label %84
    i32 119, label %86
    i32 87, label %86
    i32 120, label %88
    i32 88, label %88
    i32 32, label %93
  ]

64:                                               ; preds = %57, %57
  %65 = load i8, i8* @RC_MEMSIZE_BIT_0, align 1
  store i8 %65, i8* %12, align 1
  br label %95

66:                                               ; preds = %57, %57
  %67 = load i8, i8* @RC_MEMSIZE_BIT_1, align 1
  store i8 %67, i8* %12, align 1
  br label %95

68:                                               ; preds = %57, %57
  %69 = load i8, i8* @RC_MEMSIZE_BIT_2, align 1
  store i8 %69, i8* %12, align 1
  br label %95

70:                                               ; preds = %57, %57
  %71 = load i8, i8* @RC_MEMSIZE_BIT_3, align 1
  store i8 %71, i8* %12, align 1
  br label %95

72:                                               ; preds = %57, %57
  %73 = load i8, i8* @RC_MEMSIZE_BIT_4, align 1
  store i8 %73, i8* %12, align 1
  br label %95

74:                                               ; preds = %57, %57
  %75 = load i8, i8* @RC_MEMSIZE_BIT_5, align 1
  store i8 %75, i8* %12, align 1
  br label %95

76:                                               ; preds = %57, %57
  %77 = load i8, i8* @RC_MEMSIZE_BIT_6, align 1
  store i8 %77, i8* %12, align 1
  br label %95

78:                                               ; preds = %57, %57
  %79 = load i8, i8* @RC_MEMSIZE_BIT_7, align 1
  store i8 %79, i8* %12, align 1
  br label %95

80:                                               ; preds = %57, %57
  %81 = load i8, i8* @RC_MEMSIZE_LOW, align 1
  store i8 %81, i8* %12, align 1
  br label %95

82:                                               ; preds = %57, %57
  %83 = load i8, i8* @RC_MEMSIZE_HIGH, align 1
  store i8 %83, i8* %12, align 1
  br label %95

84:                                               ; preds = %57, %57
  %85 = load i8, i8* @RC_MEMSIZE_8_BITS, align 1
  store i8 %85, i8* %12, align 1
  br label %95

86:                                               ; preds = %57, %57
  %87 = load i8, i8* @RC_MEMSIZE_24_BITS, align 1
  store i8 %87, i8* %12, align 1
  br label %95

88:                                               ; preds = %57, %57
  %89 = load i8, i8* @RC_MEMSIZE_32_BITS, align 1
  store i8 %89, i8* %12, align 1
  br label %95

90:                                               ; preds = %57
  %91 = load i8*, i8** %8, align 8
  %92 = getelementptr inbounds i8, i8* %91, i32 -1
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %57, %90
  %94 = load i8, i8* @RC_MEMSIZE_16_BITS, align 1
  store i8 %94, i8* %12, align 1
  br label %95

95:                                               ; preds = %93, %88, %86, %84, %82, %80, %78, %76, %74, %72, %70, %68, %66, %64
  %96 = load i8*, i8** %8, align 8
  %97 = call i64 @strtoul(i8* %96, i8** %9, i32 16)
  store i64 %97, i64* %10, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = load i8*, i8** %8, align 8
  %100 = icmp eq i8* %98, %99
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* @RC_INVALID_MEMORY_OPERAND, align 4
  store i32 %102, i32* %4, align 4
  br label %130

103:                                              ; preds = %95
  %104 = load i64, i64* %10, align 8
  %105 = icmp ugt i64 %104, 4294967295
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  store i64 4294967295, i64* %10, align 8
  br label %107

107:                                              ; preds = %106, %103
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = load i64, i64* %10, align 8
  %110 = trunc i64 %109 to i32
  %111 = load i8, i8* %12, align 1
  %112 = load i8, i8* %11, align 1
  %113 = call i32 @rc_alloc_memref_value(%struct.TYPE_8__* %108, i32 %110, i8 signext %111, i8 signext %112)
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  store i32 %113, i32* %116, align 8
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp slt i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %107
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %4, align 4
  br label %130

126:                                              ; preds = %107
  %127 = load i8*, i8** %9, align 8
  %128 = load i8**, i8*** %6, align 8
  store i8* %127, i8** %128, align 8
  %129 = load i32, i32* @RC_OK, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %126, %121, %101, %55, %43
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i64 @strtoul(i8*, i8**, i32) #1

declare dso_local i32 @rc_alloc_memref_value(%struct.TYPE_8__*, i32, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
