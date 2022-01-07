; ModuleID = '/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_checkFdSet.c'
source_filename = "/home/carl/AnghaBench/curl/tests/libtest/extr_lib582.c_checkFdSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Sockets = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.Sockets*, i32*, i32, i8*)* @checkFdSet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @checkFdSet(i32* %0, %struct.Sockets* %1, i32* %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca %struct.Sockets*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store %struct.Sockets* %1, %struct.Sockets** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %42, %5
  %13 = load i32, i32* %11, align 4
  %14 = load %struct.Sockets*, %struct.Sockets** %7, align 8
  %15 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp slt i32 %13, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %12
  %19 = load %struct.Sockets*, %struct.Sockets** %7, align 8
  %20 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %11, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i64 @FD_ISSET(i32 %25, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %18
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.Sockets*, %struct.Sockets** %7, align 8
  %32 = getelementptr inbounds %struct.Sockets, %struct.Sockets* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i8*, i8** %10, align 8
  %40 = call i32 @notifyCurl(i32* %30, i32 %37, i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %29, %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %11, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %11, align 4
  br label %12

45:                                               ; preds = %12
  ret void
}

declare dso_local i64 @FD_ISSET(i32, i32*) #1

declare dso_local i32 @notifyCurl(i32*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
