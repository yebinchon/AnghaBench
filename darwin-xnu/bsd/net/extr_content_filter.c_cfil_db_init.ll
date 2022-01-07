; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_db_init.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_db_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.cfil_db* }
%struct.cfil_db = type { i32*, i32, %struct.socket* }

@LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@cfil_db_zone = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CFILHASHSIZE = common dso_local global i32 0, align 4
@M_CFIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cfil_db_init(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfil_db*, align 8
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.cfil_db* null, %struct.cfil_db** %4, align 8
  %5 = load i32, i32* @LOG_INFO, align 4
  %6 = call i32 @CFIL_LOG(i32 %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @cfil_db_zone, align 4
  %8 = call %struct.cfil_db* @zalloc(i32 %7)
  store %struct.cfil_db* %8, %struct.cfil_db** %4, align 8
  %9 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %10 = icmp eq %struct.cfil_db* %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %1
  %14 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %15 = call i32 @bzero(%struct.cfil_db* %14, i32 24)
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %18 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %17, i32 0, i32 2
  store %struct.socket* %16, %struct.socket** %18, align 8
  %19 = load i32, i32* @CFILHASHSIZE, align 4
  %20 = load i32, i32* @M_CFIL, align 4
  %21 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %22 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %21, i32 0, i32 1
  %23 = call i32* @hashinit(i32 %19, i32 %20, i32* %22)
  %24 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %25 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %24, i32 0, i32 0
  store i32* %23, i32** %25, align 8
  %26 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %27 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp eq i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %13
  %31 = load i32, i32* @cfil_db_zone, align 4
  %32 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %33 = call i32 @zfree(i32 %31, %struct.cfil_db* %32)
  store %struct.cfil_db* null, %struct.cfil_db** %4, align 8
  %34 = load i32, i32* @ENOMEM, align 4
  store i32 %34, i32* %3, align 4
  br label %39

35:                                               ; preds = %13
  %36 = load %struct.cfil_db*, %struct.cfil_db** %4, align 8
  %37 = load %struct.socket*, %struct.socket** %2, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  store %struct.cfil_db* %36, %struct.cfil_db** %38, align 8
  br label %39

39:                                               ; preds = %35, %30, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @CFIL_LOG(i32, i8*) #1

declare dso_local %struct.cfil_db* @zalloc(i32) #1

declare dso_local i32 @bzero(%struct.cfil_db*, i32) #1

declare dso_local i32* @hashinit(i32, i32, i32*) #1

declare dso_local i32 @zfree(i32, %struct.cfil_db*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
