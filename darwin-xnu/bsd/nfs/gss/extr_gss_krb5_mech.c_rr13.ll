; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_rr13.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/gss/extr_gss_krb5_mech.c_rr13.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @rr13 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rr13(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %18 = load i64, i64* %5, align 8
  %19 = add i64 %18, 7
  %20 = udiv i64 %19, 8
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %7, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %8, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %140

27:                                               ; preds = %2
  %28 = load i64, i64* %5, align 8
  %29 = urem i64 13, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %11, align 4
  %31 = load i64, i64* %5, align 8
  %32 = urem i64 %31, 8
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %12, align 4
  %34 = load i8*, i8** %4, align 8
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @memcpy(i8* %23, i8* %34, i64 %35)
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %75

39:                                               ; preds = %27
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 8, %40
  %42 = shl i32 255, %41
  %43 = load i64, i64* %6, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds i8, i8* %23, i64 %44
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %47, %42
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %45, align 1
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %9, align 8
  br label %52

52:                                               ; preds = %70, %39
  %53 = load i64, i64* %9, align 8
  %54 = icmp ult i64 %53, 8
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load i8*, i8** %4, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = load i64, i64* %9, align 8
  %61 = trunc i64 %60 to i32
  %62 = ashr i32 %59, %61
  %63 = load i64, i64* %6, align 8
  %64 = sub i64 %63, 1
  %65 = getelementptr inbounds i8, i8* %23, i64 %64
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %62
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %65, align 1
  br label %70

70:                                               ; preds = %55
  %71 = load i64, i64* %5, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %72, %71
  store i64 %73, i64* %9, align 8
  br label %52

74:                                               ; preds = %52
  br label %75

75:                                               ; preds = %74, %27
  store i64 0, i64* %9, align 8
  br label %76

76:                                               ; preds = %136, %75
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %6, align 8
  %79 = icmp ult i64 %77, %78
  br i1 %79, label %80, label %139

80:                                               ; preds = %76
  %81 = load i64, i64* %9, align 8
  %82 = mul i64 8, %81
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = sub i64 %82, %84
  store i64 %85, i64* %13, align 8
  br label %86

86:                                               ; preds = %89, %80
  %87 = load i64, i64* %13, align 8
  %88 = icmp ult i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* %13, align 8
  %92 = add i64 %91, %90
  store i64 %92, i64* %13, align 8
  br label %86

93:                                               ; preds = %86
  %94 = load i64, i64* %13, align 8
  %95 = udiv i64 %94, 8
  store i64 %95, i64* %14, align 8
  %96 = load i64, i64* %13, align 8
  %97 = urem i64 %96, 8
  store i64 %97, i64* %15, align 8
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, 8
  %100 = load i64, i64* %6, align 8
  %101 = mul i64 %100, 8
  %102 = icmp ugt i64 %99, %101
  br i1 %102, label %103, label %109

103:                                              ; preds = %93
  %104 = load i64, i64* %5, align 8
  %105 = add i64 %104, 8
  %106 = load i64, i64* %15, align 8
  %107 = sub i64 %105, %106
  %108 = urem i64 %107, 8
  store i64 %108, i64* %17, align 8
  br label %112

109:                                              ; preds = %93
  %110 = load i64, i64* %15, align 8
  %111 = sub i64 8, %110
  store i64 %111, i64* %17, align 8
  br label %112

112:                                              ; preds = %109, %103
  %113 = load i64, i64* %14, align 8
  %114 = add i64 %113, 1
  %115 = load i64, i64* %6, align 8
  %116 = urem i64 %114, %115
  store i64 %116, i64* %16, align 8
  %117 = load i64, i64* %14, align 8
  %118 = getelementptr inbounds i8, i8* %23, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = load i64, i64* %15, align 8
  %122 = trunc i64 %121 to i32
  %123 = shl i32 %120, %122
  %124 = load i64, i64* %16, align 8
  %125 = getelementptr inbounds i8, i8* %23, i64 %124
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = load i64, i64* %17, align 8
  %129 = trunc i64 %128 to i32
  %130 = ashr i32 %127, %129
  %131 = or i32 %123, %130
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %4, align 8
  %134 = load i64, i64* %9, align 8
  %135 = getelementptr inbounds i8, i8* %133, i64 %134
  store i8 %132, i8* %135, align 1
  br label %136

136:                                              ; preds = %112
  %137 = load i64, i64* %9, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %9, align 8
  br label %76

139:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %140

140:                                              ; preds = %139, %26
  %141 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
