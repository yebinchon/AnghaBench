; ModuleID = '/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtod.c_strtod.c'
source_filename = "/home/carl/AnghaBench/How-to-Make-a-Computer-Operating-System/src/sdk/src/libc/src/stdlib/extr_strtod.c_strtod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @strtod(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca x86_fp80, align 16
  %7 = alloca i32, align 4
  %8 = alloca x86_fp80, align 16
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %10 = load i8*, i8** %3, align 8
  store i8* %10, i8** %5, align 8
  store x86_fp80 0xK00000000000000000000, x86_fp80* %6, align 16
  store i32 1, i32* %7, align 4
  br label %11

11:                                               ; preds = %16, %2
  %12 = load i8*, i8** %5, align 8
  %13 = load i8, i8* %12, align 1
  %14 = call i64 @isspace(i8 signext %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load i8*, i8** %5, align 8
  %18 = getelementptr inbounds i8, i8* %17, i32 1
  store i8* %18, i8** %5, align 8
  br label %11

19:                                               ; preds = %11
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  switch i32 %22, label %27 [
    i32 45, label %23
    i32 43, label %24
  ]

23:                                               ; preds = %19
  store i32 -1, i32* %7, align 4
  br label %24

24:                                               ; preds = %19, %23
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i32 1
  store i8* %26, i8** %5, align 8
  br label %27

27:                                               ; preds = %19, %24
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %35, %28
  %30 = load i8*, i8** %5, align 8
  %31 = load i8, i8* %30, align 1
  %32 = sext i8 %31 to i32
  %33 = sub nsw i32 %32, 48
  %34 = icmp ult i32 %33, 10
  br i1 %34, label %35, label %45

35:                                               ; preds = %29
  %36 = load x86_fp80, x86_fp80* %6, align 16
  %37 = fmul x86_fp80 %36, 0xK4002A000000000000000
  %38 = load i8*, i8** %5, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %5, align 8
  %40 = load i8, i8* %38, align 1
  %41 = sext i8 %40 to i32
  %42 = sub nsw i32 %41, 48
  %43 = sitofp i32 %42 to x86_fp80
  %44 = fadd x86_fp80 %37, %43
  store x86_fp80 %44, x86_fp80* %6, align 16
  br label %29

45:                                               ; preds = %29
  %46 = load i8*, i8** %5, align 8
  %47 = load i8, i8* %46, align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %48, 46
  br i1 %49, label %50, label %73

50:                                               ; preds = %45
  store x86_fp80 0xK3FFF8000000000000000, x86_fp80* %8, align 16
  %51 = load i8*, i8** %5, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %5, align 8
  br label %53

53:                                               ; preds = %59, %50
  %54 = load i8*, i8** %5, align 8
  %55 = load i8, i8* %54, align 1
  %56 = sext i8 %55 to i32
  %57 = sub nsw i32 %56, 48
  %58 = icmp ult i32 %57, 10
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load x86_fp80, x86_fp80* %8, align 16
  %61 = fmul x86_fp80 %60, 0xK3FFBCCCCCCCCCCCCD000
  store x86_fp80 %61, x86_fp80* %8, align 16
  %62 = load i8*, i8** %5, align 8
  %63 = getelementptr inbounds i8, i8* %62, i32 1
  store i8* %63, i8** %5, align 8
  %64 = load i8, i8* %62, align 1
  %65 = sext i8 %64 to i32
  %66 = sub nsw i32 %65, 48
  %67 = sitofp i32 %66 to x86_fp80
  %68 = load x86_fp80, x86_fp80* %8, align 16
  %69 = fmul x86_fp80 %67, %68
  %70 = load x86_fp80, x86_fp80* %6, align 16
  %71 = fadd x86_fp80 %70, %69
  store x86_fp80 %71, x86_fp80* %6, align 16
  br label %53

72:                                               ; preds = %53
  br label %73

73:                                               ; preds = %72, %45
  %74 = load i8*, i8** %5, align 8
  %75 = load i8, i8* %74, align 1
  %76 = sext i8 %75 to i32
  %77 = or i32 %76, 32
  %78 = icmp eq i32 %77, 101
  br i1 %78, label %79, label %126

79:                                               ; preds = %73
  store i32 0, i32* %9, align 4
  store x86_fp80 0xK4002A000000000000000, x86_fp80* %8, align 16
  %80 = load i8*, i8** %5, align 8
  %81 = getelementptr inbounds i8, i8* %80, i32 1
  store i8* %81, i8** %5, align 8
  %82 = load i8, i8* %81, align 1
  %83 = sext i8 %82 to i32
  switch i32 %83, label %89 [
    i32 45, label %84
    i32 43, label %85
    i32 48, label %88
    i32 49, label %88
    i32 50, label %88
    i32 51, label %88
    i32 52, label %88
    i32 53, label %88
    i32 54, label %88
    i32 55, label %88
    i32 56, label %88
    i32 57, label %88
  ]

84:                                               ; preds = %79
  store x86_fp80 0xK3FFBCCCCCCCCCCCCD000, x86_fp80* %8, align 16
  br label %85

85:                                               ; preds = %79, %84
  %86 = load i8*, i8** %5, align 8
  %87 = getelementptr inbounds i8, i8* %86, i32 1
  store i8* %87, i8** %5, align 8
  br label %91

88:                                               ; preds = %79, %79, %79, %79, %79, %79, %79, %79, %79, %79
  br label %91

89:                                               ; preds = %79
  store x86_fp80 0xK00000000000000000000, x86_fp80* %6, align 16
  %90 = load i8*, i8** %3, align 8
  store i8* %90, i8** %5, align 8
  br label %127

91:                                               ; preds = %88, %85
  br label %92

92:                                               ; preds = %98, %91
  %93 = load i8*, i8** %5, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = sub nsw i32 %95, 48
  %97 = icmp ult i32 %96, 10
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load i32, i32* %9, align 4
  %100 = mul i32 10, %99
  %101 = load i8*, i8** %5, align 8
  %102 = getelementptr inbounds i8, i8* %101, i32 1
  store i8* %102, i8** %5, align 8
  %103 = load i8, i8* %101, align 1
  %104 = sext i8 %103 to i32
  %105 = sub nsw i32 %104, 48
  %106 = add i32 %100, %105
  store i32 %106, i32* %9, align 4
  br label %92

107:                                              ; preds = %92
  br label %108

108:                                              ; preds = %107, %121
  %109 = load i32, i32* %9, align 4
  %110 = and i32 %109, 1
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load x86_fp80, x86_fp80* %8, align 16
  %114 = load x86_fp80, x86_fp80* %6, align 16
  %115 = fmul x86_fp80 %114, %113
  store x86_fp80 %115, x86_fp80* %6, align 16
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i32, i32* %9, align 4
  %118 = lshr i32 %117, 1
  store i32 %118, i32* %9, align 4
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  br label %125

121:                                              ; preds = %116
  %122 = load x86_fp80, x86_fp80* %8, align 16
  %123 = load x86_fp80, x86_fp80* %8, align 16
  %124 = fmul x86_fp80 %123, %122
  store x86_fp80 %124, x86_fp80* %8, align 16
  br label %108

125:                                              ; preds = %120
  br label %126

126:                                              ; preds = %125, %73
  br label %127

127:                                              ; preds = %126, %89
  %128 = load i8**, i8*** %4, align 8
  %129 = icmp ne i8** %128, null
  br i1 %129, label %130, label %133

130:                                              ; preds = %127
  %131 = load i8*, i8** %5, align 8
  %132 = load i8**, i8*** %4, align 8
  store i8* %131, i8** %132, align 8
  br label %133

133:                                              ; preds = %130, %127
  %134 = load x86_fp80, x86_fp80* %6, align 16
  %135 = load i32, i32* %7, align 4
  %136 = sitofp i32 %135 to x86_fp80
  %137 = fmul x86_fp80 %134, %136
  %138 = fptrunc x86_fp80 %137 to double
  ret double %138
}

declare dso_local i64 @isspace(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
