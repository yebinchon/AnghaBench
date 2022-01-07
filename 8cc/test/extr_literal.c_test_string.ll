; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_literal.c_test_string.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_literal.c_test_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"abcd\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"abcdef\00", align 1
@__const.test_string.expected = private unnamed_addr constant [16 x i8] c"Aa\07\08\0C\0A\0D\09\0B\1B\07\0F\9D\FF\12\00", align 16
@.str.3 = private unnamed_addr constant [16 x i8] c"Aa\07\08\0C\0A\0D\09\0B\1B\07\0F\9D\FF\12\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_string() #0 {
  %1 = alloca [16 x i8], align 16
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = call i32 @expect_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @expect_string(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %12 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), align 1
  %13 = sext i8 %12 to i32
  %14 = call i32 @expect(i32 97, i32 %13)
  %15 = load i8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 3), align 1
  %16 = sext i8 %15 to i32
  %17 = call i32 @expect(i32 0, i32 %16)
  %18 = call i32 @expect_string(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @expect_string(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %20 = bitcast [16 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %20, i8* align 16 getelementptr inbounds ([16 x i8], [16 x i8]* @__const.test_string.expected, i32 0, i32 0), i64 16, i1 false)
  %21 = getelementptr inbounds [16 x i8], [16 x i8]* %1, i64 0, i64 0
  %22 = call i32 @expect_string(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %23 = call i32 @expect(i32 99, i32 99)
  %24 = call i32 @expect(i32 12354, i32 12354)
  %25 = call i32 @expect(i32 12354, i32 12354)
  %26 = call i32 @expect(i32 12354, i32 12354)
  store i32 1, i32* %2, align 4
  store i32 2, i32* %3, align 4
  store i32 3, i32* %4, align 4
  store i32 4, i32* %5, align 4
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* %3, align 4
  %29 = add nsw i32 %27, %28
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %29, %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %31, %32
  %34 = call i32 @expect(i32 10, i32 %33)
  store i32 1, i32* %6, align 4
  store i32 2, i32* %7, align 4
  store i32 3, i32* %8, align 4
  store i32 4, i32* %9, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = add nsw i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %37, %38
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %39, %40
  %42 = call i32 @expect(i32 10, i32 %41)
  ret void
}

declare dso_local i32 @expect_string(i8*, i8*) #1

declare dso_local i32 @expect(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
