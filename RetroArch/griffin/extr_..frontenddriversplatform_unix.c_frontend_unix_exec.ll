; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_frontend_unix_exec.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..frontenddriversplatform_unix.c_frontend_unix_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @frontend_unix_exec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @frontend_unix_exec(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [2 x i8*], align 16
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = bitcast [2 x i8*]* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %7, i8 0, i64 16, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = call i64 @malloc(i64 %10)
  %12 = inttoptr i64 %11 to i8*
  %13 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  store i8* %12, i8** %13, align 16
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %15 = load i8*, i8** %14, align 16
  %16 = load i8*, i8** %3, align 8
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @strlcpy(i8* %15, i8* %16, i64 %17)
  %19 = load i8*, i8** %3, align 8
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %5, i64 0, i64 0
  %21 = call i32 @execv(i8* %19, i8** %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @strlen(i8*) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i64) #2

declare dso_local i32 @execv(i8*, i8**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
