; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68000_movem_pd_16.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/PicoDrive/cpu/musashi/extr_m68kdasm.c_d68000_movem_pd_16.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @d68000_movem_pd_16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d68000_movem_pd_16() #0 {
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

8:                                                ; preds = %68, %0
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 8
  br i1 %10, label %11, label %71

11:                                               ; preds = %8
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 15, %13
  %15 = shl i32 1, %14
  %16 = and i32 %12, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %67

18:                                               ; preds = %11
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %33, %18
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %21, 7
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  %27 = sub nsw i32 15, %26
  %28 = shl i32 1, %27
  %29 = and i32 %24, %28
  %30 = icmp ne i32 %29, 0
  br label %31

31:                                               ; preds = %23, %20
  %32 = phi i1 [ false, %20 ], [ %30, %23 ]
  br i1 %32, label %33, label %38

33:                                               ; preds = %31
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %20

38:                                               ; preds = %31
  %39 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %40 = load i8, i8* %39, align 16
  %41 = sext i8 %40 to i32
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %45 = call i32 @strcat(i8* %44, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %38
  %47 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %48 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %49 = call i32 @strlen(i8* %48)
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  %52 = load i32, i32* %3, align 4
  %53 = call i32 (i8*, i8*, ...) @sprintf(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp sgt i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %46
  %57 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %58 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %59 = call i32 @strlen(i8* %58)
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8, i8* %57, i64 %60
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %62, %63
  %65 = call i32 (i8*, i8*, ...) @sprintf(i8* %61, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %56, %46
  br label %67

67:                                               ; preds = %66, %11
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %5, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %5, align 4
  br label %8

71:                                               ; preds = %8
  store i32 0, i32* %5, align 4
  br label %72

72:                                               ; preds = %132, %71
  %73 = load i32, i32* %5, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %135

75:                                               ; preds = %72
  %76 = load i32, i32* %1, align 4
  %77 = load i32, i32* %5, align 4
  %78 = sub nsw i32 7, %77
  %79 = shl i32 1, %78
  %80 = and i32 %76, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %131

82:                                               ; preds = %75
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %97, %82
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 7
  br i1 %86, label %87, label %95

87:                                               ; preds = %84
  %88 = load i32, i32* %1, align 4
  %89 = load i32, i32* %5, align 4
  %90 = add nsw i32 %89, 1
  %91 = sub nsw i32 7, %90
  %92 = shl i32 1, %91
  %93 = and i32 %88, %92
  %94 = icmp ne i32 %93, 0
  br label %95

95:                                               ; preds = %87, %84
  %96 = phi i1 [ false, %84 ], [ %94, %87 ]
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %4, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %4, align 4
  br label %84

102:                                              ; preds = %95
  %103 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %104 = load i8, i8* %103, align 16
  %105 = sext i8 %104 to i32
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %109 = call i32 @strcat(i8* %108, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %110

110:                                              ; preds = %107, %102
  %111 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %112 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %113 = call i32 @strlen(i8* %112)
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %111, i64 %114
  %116 = load i32, i32* %3, align 4
  %117 = call i32 (i8*, i8*, ...) @sprintf(i8* %115, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %116)
  %118 = load i32, i32* %4, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %130

120:                                              ; preds = %110
  %121 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %122 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %123 = call i32 @strlen(i8* %122)
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %121, i64 %124
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %4, align 4
  %128 = add nsw i32 %126, %127
  %129 = call i32 (i8*, i8*, ...) @sprintf(i8* %125, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %128)
  br label %130

130:                                              ; preds = %120, %110
  br label %131

131:                                              ; preds = %130, %75
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %5, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %5, align 4
  br label %72

135:                                              ; preds = %72
  %136 = load i32, i32* @g_dasm_str, align 4
  %137 = sext i32 %136 to i64
  %138 = inttoptr i64 %137 to i8*
  %139 = getelementptr inbounds [40 x i8], [40 x i8]* %2, i64 0, i64 0
  %140 = load i32, i32* @g_cpu_ir, align 4
  %141 = call i8* @get_ea_mode_str_16(i32 %140)
  %142 = call i32 (i8*, i8*, ...) @sprintf(i8* %138, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %139, i8* %141)
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
