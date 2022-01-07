; ModuleID = '/home/carl/AnghaBench/RetroArch/wiiu/extr_hbl.c_HomebrewCopyMemory.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wiiu/extr_hbl.c_HomebrewCopyMemory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, %struct.TYPE_3__* }

@RPX_MAX_SIZE = common dso_local global i32 0, align 4
@RPX_MAX_CODE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"loading ELF file \0A\00", align 1
@ELF_DATA_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"loading RPX file \0A\00", align 1
@MEM_AREA_TABLE = common dso_local global %struct.TYPE_3__* null, align 8
@ELF_DATA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @HomebrewCopyMemory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @HomebrewCopyMemory(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_3__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %13, 7
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, -8
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp sgt i32 %17, 65536
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 65536, i32* %7, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @memoryInitAreaTable(i32 %21)
  store i32 1073741824, i32* @RPX_MAX_SIZE, align 4
  store i32 50331648, i32* @RPX_MAX_CODE_SIZE, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 7
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 51966
  br i1 %26, label %27, label %37

27:                                               ; preds = %20
  %28 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = call i64 (...) @getApplicationEndAddr()
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* %7, align 4
  %32 = add nsw i32 %30, %31
  store i32 %32, i32* @ELF_DATA_ADDR, align 4
  %33 = load i32, i32* @ELF_DATA_ADDR, align 4
  %34 = icmp sge i32 %33, 16777216
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  store i32 -1, i32* %4, align 4
  br label %128

36:                                               ; preds = %27
  br label %42

37:                                               ; preds = %20
  %38 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MEM_AREA_TABLE, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* @ELF_DATA_ADDR, align 4
  br label %42

42:                                               ; preds = %37, %36
  %43 = load i32, i32* @ELF_DATA_ADDR, align 4
  %44 = icmp slt i32 %43, 16777216
  br i1 %44, label %45, label %59

45:                                               ; preds = %42
  %46 = load i32, i32* @ELF_DATA_ADDR, align 4
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %46, %47
  %49 = icmp sgt i32 %48, 16777216
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 -1, i32* %4, align 4
  br label %128

51:                                               ; preds = %45
  %52 = load i32, i32* @ELF_DATA_ADDR, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32*, i32** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @memcpy(i8* %54, i32* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* @ELF_DATA_SIZE, align 4
  br label %126

59:                                               ; preds = %42
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @DCFlushRange(i32* %60, i32 %61)
  store i32 0, i32* %8, align 4
  %63 = load i32*, i32** %5, align 8
  %64 = call i64 @OSEffectiveToPhysical(i32* %63)
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %9, align 4
  %66 = load %struct.TYPE_3__*, %struct.TYPE_3__** @MEM_AREA_TABLE, align 8
  store %struct.TYPE_3__* %66, %struct.TYPE_3__** %10, align 8
  store i32 0, i32* %11, align 4
  br label %67

67:                                               ; preds = %107, %59
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %73 = icmp ne %struct.TYPE_3__* %72, null
  br label %74

74:                                               ; preds = %71, %67
  %75 = phi i1 [ false, %67 ], [ %73, %71 ]
  br i1 %75, label %76, label %124

76:                                               ; preds = %74
  %77 = load i32, i32* %11, align 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp sge i32 %77, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %76
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_3__*, %struct.TYPE_3__** %84, align 8
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %10, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %87 = icmp ne %struct.TYPE_3__* %86, null
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  store i32 -1, i32* %4, align 4
  br label %128

89:                                               ; preds = %82
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %76
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = add nsw i32 %94, %95
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp sgt i32 %96, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %90
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %104, %105
  store i32 %106, i32* %12, align 4
  br label %107

107:                                              ; preds = %101, %90
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %9, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = load i32, i32* %12, align 4
  %117 = call i32 @SC0x25_KernelCopyData(i32 %112, i32 %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %11, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* %8, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %8, align 4
  br label %67

124:                                              ; preds = %74
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* @ELF_DATA_SIZE, align 4
  br label %126

126:                                              ; preds = %124, %51
  %127 = load i32, i32* %6, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %88, %50, %35
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @memoryInitAreaTable(i32) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @getApplicationEndAddr(...) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @DCFlushRange(i32*, i32) #1

declare dso_local i64 @OSEffectiveToPhysical(i32*) #1

declare dso_local i32 @SC0x25_KernelCopyData(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
