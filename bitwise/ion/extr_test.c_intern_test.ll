; ModuleID = '/home/carl/AnghaBench/bitwise/ion/extr_test.c_intern_test.c'
source_filename = "/home/carl/AnghaBench/bitwise/ion/extr_test.c_intern_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.intern_test.a = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@__const.intern_test.b = private unnamed_addr constant [6 x i8] c"hello\00", align 1
@__const.intern_test.c = private unnamed_addr constant [7 x i8] c"hello!\00", align 1
@__const.intern_test.d = private unnamed_addr constant [5 x i8] c"hell\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intern_test() #0 {
  %1 = alloca [6 x i8], align 1
  %2 = alloca [6 x i8], align 1
  %3 = alloca [7 x i8], align 1
  %4 = alloca [5 x i8], align 1
  %5 = bitcast [6 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %5, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.intern_test.a, i32 0, i32 0), i64 6, i1 false)
  %6 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %7 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %8 = call i8* @str_intern(i8* %7)
  %9 = call i64 @strcmp(i8* %6, i8* %8)
  %10 = icmp eq i64 %9, 0
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %14 = call i8* @str_intern(i8* %13)
  %15 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %16 = call i8* @str_intern(i8* %15)
  %17 = icmp eq i8* %14, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @assert(i32 %18)
  %20 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %21 = call i8* @str_intern(i8* %20)
  %22 = call i8* @str_intern(i8* %21)
  %23 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %24 = call i8* @str_intern(i8* %23)
  %25 = icmp eq i8* %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @assert(i32 %26)
  %28 = bitcast [6 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %28, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.intern_test.b, i32 0, i32 0), i64 6, i1 false)
  %29 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %30 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %31 = icmp ne i8* %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @assert(i32 %32)
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %35 = call i8* @str_intern(i8* %34)
  %36 = getelementptr inbounds [6 x i8], [6 x i8]* %2, i64 0, i64 0
  %37 = call i8* @str_intern(i8* %36)
  %38 = icmp eq i8* %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = bitcast [7 x i8]* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 getelementptr inbounds ([7 x i8], [7 x i8]* @__const.intern_test.c, i32 0, i32 0), i64 7, i1 false)
  %42 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %43 = call i8* @str_intern(i8* %42)
  %44 = getelementptr inbounds [7 x i8], [7 x i8]* %3, i64 0, i64 0
  %45 = call i8* @str_intern(i8* %44)
  %46 = icmp ne i8* %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @assert(i32 %47)
  %49 = bitcast [5 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %49, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.intern_test.d, i32 0, i32 0), i64 5, i1 false)
  %50 = getelementptr inbounds [6 x i8], [6 x i8]* %1, i64 0, i64 0
  %51 = call i8* @str_intern(i8* %50)
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %4, i64 0, i64 0
  %53 = call i8* @str_intern(i8* %52)
  %54 = icmp ne i8* %51, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i8* @str_intern(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
