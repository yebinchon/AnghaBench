; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_test.c_parse_test.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_test.c_parse_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [40 x i8] c"var x: char[256] = {1, 2, 3, ['a'] = 4}\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"struct Vector { x, y: float; }\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"var v = Vector{x = 1.0, y = -1.0}\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"var v: Vector = {1.0, -1.0}\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"const n = sizeof(:int*[16])\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"const n = sizeof(1+2)\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"var x = b == 1 ? 1+2 : 3-4\00", align 1
@.str.7 = private unnamed_addr constant [99 x i8] c"func fact(n: int): int { trace(\22fact\22); if (n == 0) { return 1; } else { return n * fact(n-1); } }\00", align 1
@.str.8 = private unnamed_addr constant [83 x i8] c"func fact(n: int): int { p := 1; for (i := 1; i <= n; i++) { p *= i; } return p; }\00", align 1
@.str.9 = private unnamed_addr constant [85 x i8] c"var foo = a ? a&b + c<<d + e*f == +u-v-w + *g/h(x,y) + -i%k[x] && m <= n*(p+q)/r : 0\00", align 1
@.str.10 = private unnamed_addr constant [100 x i8] c"func f(x: int): bool { switch (x) { case 0: case 1: return true; case 2: default: return false; } }\00", align 1
@.str.11 = private unnamed_addr constant [40 x i8] c"enum Color { RED = 3, GREEN, BLUE = 0 }\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"const pi = 3.14\00", align 1
@.str.13 = private unnamed_addr constant [39 x i8] c"union IntOrFloat { i: int; f: float; }\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"typedef Vectors = Vector[1+2]\00", align 1
@.str.15 = private unnamed_addr constant [41 x i8] c"func f() { do { print(42); } while(1); }\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"typedef T = (func(int):int)[16]\00", align 1
@.str.17 = private unnamed_addr constant [40 x i8] c"func f() { enum E { A, B, C } return; }\00", align 1
@.str.18 = private unnamed_addr constant [79 x i8] c"func f() { if (1) { return 1; } else if (2) { return 2; } else { return 3; } }\00", align 1
@__const.parse_test.decls = private unnamed_addr constant [19 x i8*] [i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.18, i32 0, i32 0)], align 16
@.str.19 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @parse_test() #0 {
  %1 = alloca [19 x i8*], align 16
  %2 = alloca i8**, align 8
  %3 = bitcast [19 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %3, i8* align 16 bitcast ([19 x i8*]* @__const.parse_test.decls to i8*), i64 152, i1 false)
  %4 = getelementptr inbounds [19 x i8*], [19 x i8*]* %1, i64 0, i64 0
  store i8** %4, i8*** %2, align 8
  br label %5

5:                                                ; preds = %15, %0
  %6 = load i8**, i8*** %2, align 8
  %7 = getelementptr inbounds [19 x i8*], [19 x i8*]* %1, i64 0, i64 0
  %8 = getelementptr inbounds i8*, i8** %7, i64 19
  %9 = icmp ne i8** %6, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %5
  %11 = load i8**, i8*** %2, align 8
  %12 = load i8*, i8** %11, align 8
  %13 = call i32 @init_stream(i32* null, i8* %12)
  %14 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.19, i64 0, i64 0))
  br label %15

15:                                               ; preds = %10
  %16 = load i8**, i8*** %2, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i32 1
  store i8** %17, i8*** %2, align 8
  br label %5

18:                                               ; preds = %5
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @init_stream(i32*, i8*) #2

declare dso_local i32 @printf(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
