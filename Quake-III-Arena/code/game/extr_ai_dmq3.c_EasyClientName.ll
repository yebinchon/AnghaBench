; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_EasyClientName.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_ai_dmq3.c_EasyClientName.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @EasyClientName(i32 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8, align 1
  %12 = alloca [128 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %14 = load i32, i32* %4, align 4
  %15 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %16 = call i32 @ClientName(i32 %14, i8* %15, i32 128)
  %17 = call i32 @strcpy(i8* %13, i32 %16)
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %32, %3
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = icmp ne i8 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = and i32 %29, 127
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %27, align 1
  br label %32

32:                                               ; preds = %24
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %7, align 4
  br label %18

35:                                               ; preds = %18
  %36 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %37 = call i8* @strstr(i8* %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %37, i8** %10, align 8
  br label %38

38:                                               ; preds = %50, %35
  %39 = load i8*, i8** %10, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %53

41:                                               ; preds = %38
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 1
  %47 = call i64 @strlen(i8* %46)
  %48 = add nsw i64 %47, 1
  %49 = call i32 @memmove(i8* %42, i8* %44, i64 %48)
  br label %50

50:                                               ; preds = %41
  %51 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %52 = call i8* @strstr(i8* %51, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i8* %52, i8** %10, align 8
  br label %38

53:                                               ; preds = %38
  %54 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %55 = call i8* @strstr(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i8* %55, i8** %8, align 8
  %56 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %57 = call i8* @strstr(i8* %56, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i8* %57, i8** %9, align 8
  %58 = load i8*, i8** %8, align 8
  %59 = icmp ne i8* %58, null
  br i1 %59, label %60, label %86

60:                                               ; preds = %53
  %61 = load i8*, i8** %9, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %63, label %86

63:                                               ; preds = %60
  %64 = load i8*, i8** %9, align 8
  %65 = load i8*, i8** %8, align 8
  %66 = icmp ugt i8* %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %63
  %68 = load i8*, i8** %8, align 8
  %69 = load i8*, i8** %9, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 1
  %71 = load i8*, i8** %9, align 8
  %72 = getelementptr inbounds i8, i8* %71, i64 1
  %73 = call i64 @strlen(i8* %72)
  %74 = add nsw i64 %73, 1
  %75 = call i32 @memmove(i8* %68, i8* %70, i64 %74)
  br label %85

76:                                               ; preds = %63
  %77 = load i8*, i8** %9, align 8
  %78 = load i8*, i8** %8, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = load i8*, i8** %8, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 1
  %82 = call i64 @strlen(i8* %81)
  %83 = add nsw i64 %82, 1
  %84 = call i32 @memmove(i8* %77, i8* %79, i64 %83)
  br label %85

85:                                               ; preds = %76, %67
  br label %86

86:                                               ; preds = %85, %60, %53
  %87 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %88 = load i8, i8* %87, align 16
  %89 = sext i8 %88 to i32
  %90 = icmp eq i32 %89, 109
  br i1 %90, label %96, label %91

91:                                               ; preds = %86
  %92 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %93 = load i8, i8* %92, align 16
  %94 = sext i8 %93 to i32
  %95 = icmp eq i32 %94, 77
  br i1 %95, label %96, label %115

96:                                               ; preds = %91, %86
  %97 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %98 = load i8, i8* %97, align 1
  %99 = sext i8 %98 to i32
  %100 = icmp eq i32 %99, 114
  br i1 %100, label %106, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 1
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 82
  br i1 %105, label %106, label %115

106:                                              ; preds = %101, %96
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %108 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %109 = getelementptr inbounds i8, i8* %108, i64 2
  %110 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = call i64 @strlen(i8* %111)
  %113 = add nsw i64 %112, 1
  %114 = call i32 @memmove(i8* %107, i8* %109, i64 %113)
  br label %115

115:                                              ; preds = %106, %101, %91
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  store i8* %116, i8** %10, align 8
  br label %117

117:                                              ; preds = %172, %115
  %118 = load i8*, i8** %10, align 8
  %119 = load i8, i8* %118, align 1
  %120 = icmp ne i8 %119, 0
  br i1 %120, label %121, label %173

121:                                              ; preds = %117
  %122 = load i8*, i8** %10, align 8
  %123 = load i8, i8* %122, align 1
  store i8 %123, i8* %11, align 1
  %124 = load i8, i8* %11, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sge i32 %125, 97
  br i1 %126, label %127, label %131

127:                                              ; preds = %121
  %128 = load i8, i8* %11, align 1
  %129 = sext i8 %128 to i32
  %130 = icmp sle i32 %129, 122
  br i1 %130, label %143, label %131

131:                                              ; preds = %127, %121
  %132 = load i8, i8* %11, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp sge i32 %133, 48
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i8, i8* %11, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 57
  br i1 %138, label %143, label %139

139:                                              ; preds = %135, %131
  %140 = load i8, i8* %11, align 1
  %141 = sext i8 %140 to i32
  %142 = icmp eq i32 %141, 95
  br i1 %142, label %143, label %146

143:                                              ; preds = %139, %135, %127
  %144 = load i8*, i8** %10, align 8
  %145 = getelementptr inbounds i8, i8* %144, i32 1
  store i8* %145, i8** %10, align 8
  br label %172

146:                                              ; preds = %139
  %147 = load i8, i8* %11, align 1
  %148 = sext i8 %147 to i32
  %149 = icmp sge i32 %148, 65
  br i1 %149, label %150, label %162

150:                                              ; preds = %146
  %151 = load i8, i8* %11, align 1
  %152 = sext i8 %151 to i32
  %153 = icmp sle i32 %152, 90
  br i1 %153, label %154, label %162

154:                                              ; preds = %150
  %155 = load i8*, i8** %10, align 8
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = add nsw i32 %157, 32
  %159 = trunc i32 %158 to i8
  store i8 %159, i8* %155, align 1
  %160 = load i8*, i8** %10, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %10, align 8
  br label %171

162:                                              ; preds = %150, %146
  %163 = load i8*, i8** %10, align 8
  %164 = load i8*, i8** %10, align 8
  %165 = getelementptr inbounds i8, i8* %164, i64 1
  %166 = load i8*, i8** %10, align 8
  %167 = getelementptr inbounds i8, i8* %166, i64 1
  %168 = call i64 @strlen(i8* %167)
  %169 = add nsw i64 %168, 1
  %170 = call i32 @memmove(i8* %163, i8* %165, i64 %169)
  br label %171

171:                                              ; preds = %162, %154
  br label %172

172:                                              ; preds = %171, %143
  br label %117

173:                                              ; preds = %117
  %174 = load i8*, i8** %5, align 8
  %175 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %176 = load i32, i32* %6, align 4
  %177 = sub nsw i32 %176, 1
  %178 = call i32 @strncpy(i8* %174, i8* %175, i32 %177)
  %179 = load i8*, i8** %5, align 8
  %180 = load i32, i32* %6, align 4
  %181 = sub nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i8, i8* %179, i64 %182
  store i8 0, i8* %183, align 1
  %184 = load i8*, i8** %5, align 8
  ret i8* %184
}

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local i32 @ClientName(i32, i8*, i32) #1

declare dso_local i8* @strstr(i8*, i8*) #1

declare dso_local i32 @memmove(i8*, i8*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
