; ModuleID = '/home/carl/AnghaBench/disque/src/extr_sds.c_sdscatlen.c'
source_filename = "/home/carl/AnghaBench/disque/src/extr_sds.c_sdscatlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @sdscatlen(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = call i64 @sdslen(i8* %9)
  store i64 %10, i64* %8, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i8* @sdsMakeRoomFor(i8* %11, i64 %12)
  store i8* %13, i8** %5, align 8
  %14 = load i8*, i8** %5, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %35

17:                                               ; preds = %3
  %18 = load i8*, i8** %5, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds i8, i8* %18, i64 %19
  %21 = load i8*, i8** %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @memcpy(i8* %20, i8* %21, i64 %22)
  %24 = load i8*, i8** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = add i64 %25, %26
  %28 = call i32 @sdssetlen(i8* %24, i64 %27)
  %29 = load i8*, i8** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %30, %31
  %33 = getelementptr inbounds i8, i8* %29, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load i8*, i8** %5, align 8
  store i8* %34, i8** %4, align 8
  br label %35

35:                                               ; preds = %17, %16
  %36 = load i8*, i8** %4, align 8
  ret i8* %36
}

declare dso_local i64 @sdslen(i8*) #1

declare dso_local i8* @sdsMakeRoomFor(i8*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @sdssetlen(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
