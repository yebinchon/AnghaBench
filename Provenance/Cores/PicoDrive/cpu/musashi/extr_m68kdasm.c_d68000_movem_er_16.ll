; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68000_movem_er_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68000_movem_er_16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"D%d\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"-D%d\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"A%d\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"-A%d\00", align 1
@g_dasm_str = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"movem.w %s, %s\00", align 1
@g_cpu_ir = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68000_movem_er_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68000_movem_er_16() #0 {
  %1 = alloca i32, align 4
  %2 = alloca [40 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = call i32 (...) @read_imm_16()
  store i32 %6, i32* %1, align 4
  %7 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  store i8 0, i8* %7, align 16
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %66, %0
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %69

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  %15 = and i32 %12, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %65

17:                                               ; preds = %11
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %31, %17
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 7
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i32, i32* %1, align 4
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  %26 = shl i32 1, %25
  %27 = and i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br label %29

29:                                               ; preds = %22, %19
  %30 = phi i1 [ false, %19 ], [ %28, %22 ]
  br i1 %30, label %31, label %36

31:                                               ; preds = %29
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %19

36:                                               ; preds = %29
  %37 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %38 = load i8, i8* %37, align 16
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %43 = call i32 @strcat(i8* %42, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %36
  %45 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %46 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %47 = call i32 @strlen(i8* %46)
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i8*, i8*, ...) @sprintf(i8* %49, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %44
  %55 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %56 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %57 = call i32 @strlen(i8* %56)
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = call i32 (i8*, i8*, ...) @sprintf(i8* %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %54, %44
  br label %65

65:                                               ; preds = %64, %11
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %5, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %5, align 4
  br label %8

69:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %130, %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 8
  br i1 %72, label %73, label %133

73:                                               ; preds = %70
  %74 = load i32, i32* %1, align 4
  %75 = load i32, i32* %5, align 4
  %76 = add nsw i32 %75, 8
  %77 = shl i32 1, %76
  %78 = and i32 %74, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %129

80:                                               ; preds = %73
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %82

82:                                               ; preds = %95, %80
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 7
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load i32, i32* %1, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 8
  %89 = add nsw i32 %88, 1
  %90 = shl i32 1, %89
  %91 = and i32 %86, %90
  %92 = icmp ne i32 %91, 0
  br label %93

93:                                               ; preds = %85, %82
  %94 = phi i1 [ false, %82 ], [ %92, %85 ]
  br i1 %94, label %95, label %100

95:                                               ; preds = %93
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %4, align 4
  br label %82

100:                                              ; preds = %93
  %101 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %102 = load i8, i8* %101, align 16
  %103 = sext i8 %102 to i32
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %100
  %106 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %107 = call i32 @strcat(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %108

108:                                              ; preds = %105, %100
  %109 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %110 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %111 = call i32 @strlen(i8* %110)
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i8, i8* %109, i64 %112
  %114 = load i32, i32* %3, align 4
  %115 = call i32 (i8*, i8*, ...) @sprintf(i8* %113, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %114)
  %116 = load i32, i32* %4, align 4
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %120 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %121 = call i32 @strlen(i8* %120)
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i8, i8* %119, i64 %122
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* %4, align 4
  %126 = add nsw i32 %124, %125
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* %123, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %126)
  br label %128

128:                                              ; preds = %118, %108
  br label %129

129:                                              ; preds = %128, %73
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %5, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %5, align 4
  br label %70

133:                                              ; preds = %70
  %134 = load i32, i32* @g_dasm_str, align 4
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i8*
  %137 = load i32, i32* @g_cpu_ir, align 4
  %138 = call i8* @get_ea_mode_str_16(i32 %137)
  %139 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %140 = call i32 (i8*, i8*, ...) @sprintf(i8* %136, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %138, i8* %139)
  ret void
}

declare dso_local i32 @read_imm_16(...) #1

declare dso_local i32 @strcat(i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @get_ea_mode_str_16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
