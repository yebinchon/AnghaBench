; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_ParseExpression.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/q3asm/extr_q3asm.c_ParseExpression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_LINE_LENGTH = common dso_local global i32 0, align 4
@token = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ParseExpression() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %7 = zext i32 %6 to i64
  %8 = call i8* @llvm.stacksave()
  store i8* %8, i8** %3, align 8
  %9 = alloca i8, i64 %7, align 16
  store i64 %7, i64* %4, align 8
  %10 = load i8*, i8** @token, align 8
  %11 = getelementptr inbounds i8, i8* %10, i64 0
  %12 = load i8, i8* %11, align 1
  %13 = sext i8 %12 to i32
  %14 = icmp eq i32 %13, 45
  br i1 %14, label %15, label %16

15:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %17

16:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %16, %15
  br label %18

18:                                               ; preds = %48, %17
  %19 = load i32, i32* %1, align 4
  %20 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load i8*, i8** @token, align 8
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = load i8, i8* %26, align 1
  %28 = sext i8 %27 to i32
  %29 = icmp eq i32 %28, 43
  br i1 %29, label %46, label %30

30:                                               ; preds = %22
  %31 = load i8*, i8** @token, align 8
  %32 = load i32, i32* %1, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %31, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 45
  br i1 %37, label %46, label %38

38:                                               ; preds = %30
  %39 = load i8*, i8** @token, align 8
  %40 = load i32, i32* %1, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8, i8* %39, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %38, %30, %22
  br label %51

47:                                               ; preds = %38
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %1, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %1, align 4
  br label %18

51:                                               ; preds = %46, %18
  %52 = load i8*, i8** @token, align 8
  %53 = load i32, i32* %1, align 4
  %54 = call i32 @memcpy(i8* %9, i8* %52, i32 %53)
  %55 = load i32, i32* %1, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i8, i8* %9, i64 %56
  store i8 0, i8* %57, align 1
  %58 = getelementptr inbounds i8, i8* %9, i64 0
  %59 = load i8, i8* %58, align 16
  %60 = sext i8 %59 to i32
  %61 = icmp sge i32 %60, 48
  br i1 %61, label %62, label %67

62:                                               ; preds = %51
  %63 = getelementptr inbounds i8, i8* %9, i64 0
  %64 = load i8, i8* %63, align 16
  %65 = sext i8 %64 to i32
  %66 = icmp sle i32 %65, 57
  br i1 %66, label %72, label %67

67:                                               ; preds = %62, %51
  %68 = getelementptr inbounds i8, i8* %9, i64 0
  %69 = load i8, i8* %68, align 16
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 %70, 45
  br i1 %71, label %72, label %74

72:                                               ; preds = %67, %62
  %73 = call i32 @atoi(i8* %9)
  store i32 %73, i32* %5, align 4
  br label %76

74:                                               ; preds = %67
  %75 = call i32 @LookupSymbol(i8* %9)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %72
  br label %77

77:                                               ; preds = %161, %76
  %78 = load i8*, i8** @token, align 8
  %79 = load i32, i32* %1, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %78, i64 %80
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %163

85:                                               ; preds = %77
  %86 = load i32, i32* %1, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %118, %85
  %89 = load i32, i32* %2, align 4
  %90 = load i32, i32* @MAX_LINE_LENGTH, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %121

92:                                               ; preds = %88
  %93 = load i8*, i8** @token, align 8
  %94 = load i32, i32* %2, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i8, i8* %93, i64 %95
  %97 = load i8, i8* %96, align 1
  %98 = sext i8 %97 to i32
  %99 = icmp eq i32 %98, 43
  br i1 %99, label %116, label %100

100:                                              ; preds = %92
  %101 = load i8*, i8** @token, align 8
  %102 = load i32, i32* %2, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = sext i8 %105 to i32
  %107 = icmp eq i32 %106, 45
  br i1 %107, label %116, label %108

108:                                              ; preds = %100
  %109 = load i8*, i8** @token, align 8
  %110 = load i32, i32* %2, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %109, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108, %100, %92
  br label %121

117:                                              ; preds = %108
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %2, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %2, align 4
  br label %88

121:                                              ; preds = %116, %88
  %122 = load i8*, i8** @token, align 8
  %123 = load i32, i32* %1, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i8, i8* %122, i64 %124
  %126 = getelementptr inbounds i8, i8* %125, i64 1
  %127 = load i32, i32* %2, align 4
  %128 = load i32, i32* %1, align 4
  %129 = sub nsw i32 %127, %128
  %130 = sub nsw i32 %129, 1
  %131 = call i32 @memcpy(i8* %9, i8* %126, i32 %130)
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* %1, align 4
  %134 = sub nsw i32 %132, %133
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i8, i8* %9, i64 %136
  store i8 0, i8* %137, align 1
  %138 = load i8*, i8** @token, align 8
  %139 = load i32, i32* %1, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %138, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = sext i8 %142 to i32
  %144 = icmp eq i32 %143, 43
  br i1 %144, label %145, label %149

145:                                              ; preds = %121
  %146 = call i32 @atoi(i8* %9)
  %147 = load i32, i32* %5, align 4
  %148 = add nsw i32 %147, %146
  store i32 %148, i32* %5, align 4
  br label %149

149:                                              ; preds = %145, %121
  %150 = load i8*, i8** @token, align 8
  %151 = load i32, i32* %1, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = sext i8 %154 to i32
  %156 = icmp eq i32 %155, 45
  br i1 %156, label %157, label %161

157:                                              ; preds = %149
  %158 = call i32 @atoi(i8* %9)
  %159 = load i32, i32* %5, align 4
  %160 = sub nsw i32 %159, %158
  store i32 %160, i32* %5, align 4
  br label %161

161:                                              ; preds = %157, %149
  %162 = load i32, i32* %2, align 4
  store i32 %162, i32* %1, align 4
  br label %77

163:                                              ; preds = %77
  %164 = load i32, i32* %5, align 4
  %165 = load i8*, i8** %3, align 8
  call void @llvm.stackrestore(i8* %165)
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @atoi(i8*) #2

declare dso_local i32 @LookupSymbol(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
