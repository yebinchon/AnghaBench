; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-conn-pool-lua.c_network_mysqld_con_idle_handle.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-conn-pool-lua.c_network_mysqld_con_idle_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32* }

@EV_READ = common dso_local global i16 0, align 2
@FIONREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"ioctl(%d, FIONREAD, ...) failed: %s\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [67 x i8] c"ioctl(%d, FIONREAD, ...) said there is something to read, oops: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i16, i8*)* @network_mysqld_con_idle_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @network_mysqld_con_idle_handle(i32 %0, i16 signext %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i16 %1, i16* %5, align 2
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %11, %struct.TYPE_3__** %7, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %8, align 8
  %15 = load i16, i16* %5, align 2
  %16 = sext i16 %15 to i32
  %17 = load i16, i16* @EV_READ, align 2
  %18 = sext i16 %17 to i32
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %43

20:                                               ; preds = %3
  store i32 -1, i32* %9, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @FIONREAD, align 4
  %23 = call i64 @ioctlsocket(i32 %21, i32 %22, i32* %9)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @errno, align 4
  %28 = call i32 @g_strerror(i32 %27)
  %29 = call i32 @g_critical(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %28)
  br label %42

30:                                               ; preds = %20
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @g_critical(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  br label %41

37:                                               ; preds = %30
  %38 = load i32*, i32** %8, align 8
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %40 = call i32 @network_connection_pool_remove(i32* %38, %struct.TYPE_3__* %39)
  br label %41

41:                                               ; preds = %37, %33
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %3
  ret void
}

declare dso_local i64 @ioctlsocket(i32, i32, i32*) #1

declare dso_local i32 @g_critical(i8*, i32, i32) #1

declare dso_local i32 @g_strerror(i32) #1

declare dso_local i32 @network_connection_pool_remove(i32*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
