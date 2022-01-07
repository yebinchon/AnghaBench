; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_invoke.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_misc.c_fileport_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.fileglob = type opaque

@MACH_MSG_TYPE_COPY_SEND = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@KERN_FAILURE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @fileport_invoke(%struct.TYPE_3__* %0, i32 %1, i32 (i32, %struct.fileglob*, i8*)* %2, i8* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32 (i32, %struct.fileglob*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.fileglob*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 (i32, %struct.fileglob*, i8*)* %2, i32 (i32, %struct.fileglob*, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32* %4, i32** %11, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @MACH_MSG_TYPE_COPY_SEND, align 4
  %20 = call i64 @ipc_object_copyin(i32 %17, i32 %18, i32 %19, i32* %13)
  store i64 %20, i64* %12, align 8
  %21 = load i64, i64* %12, align 8
  %22 = load i64, i64* @KERN_SUCCESS, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %5
  %25 = load i64, i64* %12, align 8
  store i64 %25, i64* %6, align 8
  br label %43

26:                                               ; preds = %5
  %27 = load i32, i32* %13, align 4
  %28 = call %struct.fileglob* @fileport_port_to_fileglob(i32 %27)
  store %struct.fileglob* %28, %struct.fileglob** %14, align 8
  %29 = icmp ne %struct.fileglob* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %26
  %31 = load i32 (i32, %struct.fileglob*, i8*)*, i32 (i32, %struct.fileglob*, i8*)** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.fileglob*, %struct.fileglob** %14, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = call i32 %31(i32 %32, %struct.fileglob* %33, i8* %34)
  %36 = load i32*, i32** %11, align 8
  store i32 %35, i32* %36, align 4
  br label %39

37:                                               ; preds = %26
  %38 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %38, i64* %12, align 8
  br label %39

39:                                               ; preds = %37, %30
  %40 = load i32, i32* %13, align 4
  %41 = call i32 @ipc_port_release_send(i32 %40)
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %6, align 8
  br label %43

43:                                               ; preds = %39, %24
  %44 = load i64, i64* %6, align 8
  ret i64 %44
}

declare dso_local i64 @ipc_object_copyin(i32, i32, i32, i32*) #1

declare dso_local %struct.fileglob* @fileport_port_to_fileglob(i32) #1

declare dso_local i32 @ipc_port_release_send(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
