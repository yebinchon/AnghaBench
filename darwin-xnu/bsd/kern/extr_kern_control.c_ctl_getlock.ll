; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_getlock.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_control.c_ctl_getlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i64, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.ctl_cb = type { i32* }

@.str = private unnamed_addr constant [40 x i8] c"ctl_getlock: so=%p usecount=%x lrh= %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"ctl_getlock: so=%p NULL NO so_pcb %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.socket*, i32)* @ctl_getlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ctl_getlock(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ctl_cb*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.socket*, %struct.socket** %4, align 8
  %8 = getelementptr inbounds %struct.socket, %struct.socket* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.ctl_cb*
  store %struct.ctl_cb* %10, %struct.ctl_cb** %6, align 8
  %11 = load %struct.socket*, %struct.socket** %4, align 8
  %12 = getelementptr inbounds %struct.socket, %struct.socket* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.socket*, %struct.socket** %4, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.socket*, %struct.socket** %4, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = call i32 @solockhistory_nr(%struct.socket* %25)
  %27 = call i32 (i8*, %struct.socket*, i64, ...) @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), %struct.socket* %21, i64 %24, i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.ctl_cb*, %struct.ctl_cb** %6, align 8
  %30 = getelementptr inbounds %struct.ctl_cb, %struct.ctl_cb* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %3, align 8
  br label %45

32:                                               ; preds = %2
  %33 = load %struct.socket*, %struct.socket** %4, align 8
  %34 = load %struct.socket*, %struct.socket** %4, align 8
  %35 = call i32 @solockhistory_nr(%struct.socket* %34)
  %36 = sext i32 %35 to i64
  %37 = call i32 (i8*, %struct.socket*, i64, ...) @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), %struct.socket* %33, i64 %36)
  %38 = load %struct.socket*, %struct.socket** %4, align 8
  %39 = getelementptr inbounds %struct.socket, %struct.socket* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  store i32* %44, i32** %3, align 8
  br label %45

45:                                               ; preds = %32, %28
  %46 = load i32*, i32** %3, align 8
  ret i32* %46
}

declare dso_local i32 @panic(i8*, %struct.socket*, i64, ...) #1

declare dso_local i32 @solockhistory_nr(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
