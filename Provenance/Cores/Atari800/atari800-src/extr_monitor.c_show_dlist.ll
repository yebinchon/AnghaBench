; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_dlist.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_monitor.c_show_dlist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ANTIC_dlist = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%04X: \00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%dx \00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"DLI \00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"%c BLANK\0A\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"JVB %04X\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"JMP %04X\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"LMS %04X \00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"VSCROL \00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"HSCROL \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"MODE %X\0A\00", align 1
@dlist = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @show_dlist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_dlist() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = load i32, i32* @ANTIC_dlist, align 4
  store i32 %11, i32* %1, align 4
  store i32 -1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %12 = call i32 @get_hex(i32* %1)
  %13 = load i32, i32* %1, align 4
  store i32 %13, i32* %2, align 4
  %14 = call i32 @ANTIC_GetDLByte(i32* %2)
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %163, %0
  %16 = load i32, i32* %1, align 4
  %17 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = and i32 %18, 15
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %58

21:                                               ; preds = %15
  %22 = load i32, i32* %2, align 4
  store i32 %22, i32* %1, align 4
  %23 = call i32 @ANTIC_GetDLByte(i32* %2)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %45

27:                                               ; preds = %21
  store i32 1, i32* %7, align 4
  br label %28

28:                                               ; preds = %40, %27
  %29 = load i32, i32* %7, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %2, align 4
  store i32 %31, i32* %1, align 4
  %32 = call i32 @ANTIC_GetDLByte(i32* %2)
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %3, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = icmp slt i32 %38, 240
  br label %40

40:                                               ; preds = %37, %33
  %41 = phi i1 [ false, %33 ], [ %39, %37 ]
  br i1 %41, label %28, label %42

42:                                               ; preds = %40
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %45

45:                                               ; preds = %42, %21
  %46 = load i32, i32* %3, align 4
  %47 = and i32 %46, 128
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %45
  %52 = load i32, i32* %3, align 4
  %53 = ashr i32 %52, 4
  %54 = and i32 %53, 7
  %55 = add nsw i32 %54, 49
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %154

58:                                               ; preds = %15
  %59 = load i32, i32* %3, align 4
  %60 = and i32 %59, 15
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %62, label %81

62:                                               ; preds = %58
  %63 = call i32 @ANTIC_GetDLWord(i32* %2)
  store i32 %63, i32* %1, align 4
  %64 = load i32, i32* %3, align 4
  %65 = and i32 %64, 128
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %67, %62
  %70 = load i32, i32* %3, align 4
  %71 = and i32 %70, 64
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* %1, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %74)
  br label %164

76:                                               ; preds = %69
  %77 = load i32, i32* %1, align 4
  %78 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %1, align 4
  store i32 %79, i32* %2, align 4
  %80 = call i32 @ANTIC_GetDLByte(i32* %2)
  store i32 %80, i32* %3, align 4
  br label %153

81:                                               ; preds = %58
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 64
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %81
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %85
  %89 = call i32 @ANTIC_GetDLWord(i32* %2)
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %85, %81
  store i32 1, i32* %10, align 4
  br label %91

91:                                               ; preds = %113, %90
  %92 = load i32, i32* %2, align 4
  store i32 %92, i32* %1, align 4
  %93 = call i32 @ANTIC_GetDLByte(i32* %2)
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %3, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %100, label %97

97:                                               ; preds = %91
  %98 = load i32, i32* %10, align 4
  %99 = icmp sge i32 %98, 240
  br i1 %99, label %100, label %101

100:                                              ; preds = %97, %91
  store i32 -1, i32* %9, align 4
  br label %116

101:                                              ; preds = %97
  %102 = load i32, i32* %3, align 4
  %103 = and i32 %102, 64
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %101
  %106 = call i32 @ANTIC_GetDLWord(i32* %2)
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %9, align 4
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %105
  br label %116

111:                                              ; preds = %105
  br label %112

112:                                              ; preds = %111, %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %10, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %10, align 4
  br label %91

116:                                              ; preds = %110, %100
  %117 = load i32, i32* %10, align 4
  %118 = icmp sgt i32 %117, 1
  br i1 %118, label %119, label %122

119:                                              ; preds = %116
  %120 = load i32, i32* %10, align 4
  %121 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = load i32, i32* %3, align 4
  %124 = and i32 %123, 128
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %122
  %127 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  br label %128

128:                                              ; preds = %126, %122
  %129 = load i32, i32* %3, align 4
  %130 = and i32 %129, 64
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %128
  %133 = load i32, i32* %4, align 4
  %134 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %133)
  br label %135

135:                                              ; preds = %132, %128
  %136 = load i32, i32* %3, align 4
  %137 = and i32 %136, 32
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0))
  br label %141

141:                                              ; preds = %139, %135
  %142 = load i32, i32* %3, align 4
  %143 = and i32 %142, 16
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %141
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  br label %147

147:                                              ; preds = %145, %141
  %148 = load i32, i32* %3, align 4
  %149 = and i32 %148, 15
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i32 %149)
  %151 = load i32, i32* %9, align 4
  store i32 %151, i32* %4, align 4
  %152 = load i32, i32* %8, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %147, %76
  br label %154

154:                                              ; preds = %153, %51
  %155 = load i32, i32* %5, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %5, align 4
  %157 = icmp eq i32 %156, 24
  br i1 %157, label %158, label %163

158:                                              ; preds = %154
  %159 = call i64 (...) @pager()
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  br label %164

162:                                              ; preds = %158
  store i32 0, i32* %5, align 4
  br label %163

163:                                              ; preds = %162, %154
  br label %15

164:                                              ; preds = %161, %73
  ret void
}

declare dso_local i32 @get_hex(i32*) #1

declare dso_local i32 @ANTIC_GetDLByte(i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ANTIC_GetDLWord(i32*) #1

declare dso_local i64 @pager(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
