; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_clone_destroy.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_gif.c_gif_clone_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"gif_clone_destroy: gif remove failed %d\0A\00", align 1
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"gif_clone_destroy: ifnet_set_flags failed %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"gif_clone_destroy: ifnet_detach(%p) failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*)* @gif_clone_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gif_clone_destroy(%struct.ifnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %6 = call i32 @gif_remove(%struct.ifnet* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %15 = load i32, i32* @IFF_UP, align 4
  %16 = call i32 @ifnet_set_flags(%struct.ifnet* %14, i32 0, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %13
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  br label %22

22:                                               ; preds = %19, %13
  %23 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %24 = call i32 @ifnet_detach(%struct.ifnet* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @panic(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), %struct.ifnet* %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %22
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %9
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @gif_remove(%struct.ifnet*) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @ifnet_set_flags(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @ifnet_detach(%struct.ifnet*) #1

declare dso_local i32 @panic(i8*, %struct.ifnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
