; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_DesEcbEncrypt.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Encrypt.c_DesEcbEncrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @DesEcbEncrypt(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = icmp eq i8* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = load i8*, i8** %5, align 8
  %14 = icmp eq i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12
  %16 = load i8*, i8** %6, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %12, %3
  br label %127

19:                                               ; preds = %15
  %20 = load i8*, i8** %6, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %7, align 8
  %22 = call i32 @Zero(i32** %8, i32 8)
  %23 = call i32 @Zero(i32** %9, i32 8)
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %26, i32* %28, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %31, 7
  %33 = and i32 %32, 255
  %34 = load i32*, i32** %7, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 1
  %38 = or i32 %33, %37
  %39 = trunc i32 %38 to i8
  %40 = zext i8 %39 to i32
  %41 = load i32*, i32** %8, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %7, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %45, 6
  %47 = and i32 %46, 255
  %48 = load i32*, i32** %7, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 2
  %52 = or i32 %47, %51
  %53 = trunc i32 %52 to i8
  %54 = zext i8 %53 to i32
  %55 = load i32*, i32** %8, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 2
  store i32 %54, i32* %56, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  %59 = load i32, i32* %58, align 4
  %60 = shl i32 %59, 5
  %61 = and i32 %60, 255
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 3
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 3
  %66 = or i32 %61, %65
  %67 = trunc i32 %66 to i8
  %68 = zext i8 %67 to i32
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %7, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 4
  %75 = and i32 %74, 255
  %76 = load i32*, i32** %7, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = ashr i32 %78, 4
  %80 = or i32 %75, %79
  %81 = trunc i32 %80 to i8
  %82 = zext i8 %81 to i32
  %83 = load i32*, i32** %8, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 4
  store i32 %82, i32* %84, align 4
  %85 = load i32*, i32** %7, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  %87 = load i32, i32* %86, align 4
  %88 = shl i32 %87, 3
  %89 = and i32 %88, 255
  %90 = load i32*, i32** %7, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 5
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 5
  %94 = or i32 %89, %93
  %95 = trunc i32 %94 to i8
  %96 = zext i8 %95 to i32
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 5
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %7, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 5
  %101 = load i32, i32* %100, align 4
  %102 = shl i32 %101, 2
  %103 = and i32 %102, 255
  %104 = load i32*, i32** %7, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 6
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 6
  %108 = or i32 %103, %107
  %109 = trunc i32 %108 to i8
  %110 = zext i8 %109 to i32
  %111 = load i32*, i32** %8, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 6
  store i32 %110, i32* %112, align 4
  %113 = load i32*, i32** %7, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 6
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 1
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = zext i8 %118 to i32
  %120 = load i32*, i32** %8, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 7
  store i32 %119, i32* %121, align 4
  %122 = call i32 @DES_set_odd_parity(i32** %8)
  %123 = call i32 @DES_set_key_unchecked(i32** %8, i32** %9)
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** %4, align 8
  %126 = call i32 @DES_ecb_encrypt(i8* %124, i8* %125, i32** %9, i32 1)
  br label %127

127:                                              ; preds = %19, %18
  ret void
}

declare dso_local i32 @Zero(i32**, i32) #1

declare dso_local i32 @DES_set_odd_parity(i32**) #1

declare dso_local i32 @DES_set_key_unchecked(i32**, i32**) #1

declare dso_local i32 @DES_ecb_encrypt(i8*, i8*, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
