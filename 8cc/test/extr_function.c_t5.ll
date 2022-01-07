; ModuleID = '/home/carl/AnghaBench/8cc/test/extr_function.c_t5.c'
source_filename = "/home/carl/AnghaBench/8cc/test/extr_function.c_t5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.t5.a = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 3], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @t5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t5() #0 {
  %1 = alloca [3 x i32], align 4
  %2 = alloca i32*, align 8
  %3 = bitcast [3 x i32]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast ([3 x i32]* @__const.t5.a to i8*), i64 12, i1 false)
  %4 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  store i32 99, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  store i32* %7, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  store i32 98, i32* %8, align 4
  %9 = load i32*, i32** %2, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32* %10, i32** %2, align 8
  %11 = load i32*, i32** %2, align 8
  store i32 97, i32* %11, align 4
  %12 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %13 = call i32 @t5a(i32* %12)
  %14 = getelementptr inbounds [3 x i32], [3 x i32]* %1, i64 0, i64 0
  %15 = call i32 @t5b(i32* %14)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @t5a(i32*) #2

declare dso_local i32 @t5b(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
