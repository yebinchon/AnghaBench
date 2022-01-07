; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_string.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_initializer.c_test_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.test_string.s = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1
@__const.test_string.t = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_string to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_string() #0 {
  %1 = alloca [4 x i8], align 1
  %2 = alloca [4 x i8], align 1
  %3 = bitcast [4 x i8]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_string.s, i32 0, i32 0), i64 4, i1 false)
  %4 = getelementptr inbounds [4 x i8], [4 x i8]* %1, i64 0, i64 0
  %5 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @expect_string to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = bitcast [4 x i8]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @__const.test_string.t, i32 0, i32 0), i64 4, i1 false)
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %2, i64 0, i64 0
  %8 = call i32 (i8*, i8*, ...) bitcast (i32 (...)* @expect_string to i32 (i8*, i8*, ...)*)(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @expect_string(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
