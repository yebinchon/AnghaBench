; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_check_persistent_connection.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/io/extr_io_http.c_io_http_check_persistent_connection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@CONNECTION_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @io_http_check_persistent_connection to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_http_check_persistent_connection(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 4
  store i32* %0, i32** %3, align 8
  %5 = load i32, i32* @CONNECTION_NAME, align 4
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store i32 %5, i32* %6, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  %10 = load i32*, i32** %3, align 8
  %11 = call i64 @vc_containers_list_find_entry(i32* %10, %struct.TYPE_3__* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @strcasecmp(i32 %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %21

19:                                               ; preds = %13
  br label %20

20:                                               ; preds = %19, %9, %1
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %20, %18
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i64 @vc_containers_list_find_entry(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @strcasecmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
