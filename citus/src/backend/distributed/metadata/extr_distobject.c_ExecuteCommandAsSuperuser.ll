; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_ExecuteCommandAsSuperuser.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/metadata/extr_distobject.c_ExecuteCommandAsSuperuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InvalidOid = common dso_local global i32 0, align 4
@SPI_OK_CONNECT = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"could not connect to SPI manager\00", align 1
@SECURITY_LOCAL_USERID_CHANGE = common dso_local global i32 0, align 4
@SPI_OK_FINISH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"could not disconnect from SPI manager\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32*)* @ExecuteCommandAsSuperuser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ExecuteCommandAsSuperuser(i8* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* @InvalidOid, align 4
  store i32 %14, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %15 = call i32 (...) @SPI_connect()
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @SPI_OK_CONNECT, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %4
  %20 = load i32, i32* @ERROR, align 4
  %21 = call i32 @errmsg(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @ereport(i32 %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %4
  %24 = call i32 @GetUserIdAndSecContext(i32* %10, i32* %11)
  %25 = call i32 (...) @CitusExtensionOwner()
  %26 = load i32, i32* @SECURITY_LOCAL_USERID_CHANGE, align 4
  %27 = call i32 @SetUserIdAndSecContext(i32 %25, i32 %26)
  %28 = load i8*, i8** %5, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @SPI_execute_with_args(i8* %28, i32 %29, i32* %30, i32* %31, i32* null, i32 0, i32 0)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @SetUserIdAndSecContext(i32 %33, i32 %34)
  %36 = call i32 (...) @SPI_finish()
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @SPI_OK_FINISH, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32, i32* @ERROR, align 4
  %42 = call i32 @errmsg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %43 = call i32 @ereport(i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %40, %23
  %45 = load i32, i32* %12, align 4
  ret i32 %45
}

declare dso_local i32 @SPI_connect(...) #1

declare dso_local i32 @ereport(i32, i32) #1

declare dso_local i32 @errmsg(i8*) #1

declare dso_local i32 @GetUserIdAndSecContext(i32*, i32*) #1

declare dso_local i32 @SetUserIdAndSecContext(i32, i32) #1

declare dso_local i32 @CitusExtensionOwner(...) #1

declare dso_local i32 @SPI_execute_with_args(i8*, i32, i32*, i32*, i32*, i32, i32) #1

declare dso_local i32 @SPI_finish(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
