; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_description.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_event.c_kevent_description.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kevent_internal_s = type { i32*, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [116 x i8] c"kevent={.ident=%#llx, .filter=%d, .flags=%#x, .udata=%#llx, .fflags=%#x, .data=%#llx, .ext[0]=%#llx, .ext[1]=%#llx}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kevent_description(%struct.kevent_internal_s* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.kevent_internal_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.kevent_internal_s* %0, %struct.kevent_internal_s** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %10 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %13 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %16 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %19 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %22 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %25 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %28 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.kevent_internal_s*, %struct.kevent_internal_s** %4, align 8
  %33 = getelementptr inbounds %struct.kevent_internal_s, %struct.kevent_internal_s* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @snprintf(i8* %7, i64 %8, i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %31, i32 %36)
  %38 = load i8*, i8** %5, align 8
  ret i8* %38
}

declare dso_local i32 @snprintf(i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
