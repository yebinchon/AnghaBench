; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadTraffic.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Server.c_SiLoadTraffic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"SendTraffic\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"RecvTraffic\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @SiLoadTraffic(i32* %0, i8* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_4__*, align 8
  %7 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %6, align 8
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %9 = icmp ne %struct.TYPE_4__* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %12 = call i32 @Zero(%struct.TYPE_4__* %11, i32 8)
  br label %13

13:                                               ; preds = %10, %3
  %14 = load i32*, i32** %4, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %22, label %16

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8
  %18 = icmp eq i8* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %21 = icmp eq %struct.TYPE_4__* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19, %16, %13
  br label %39

23:                                               ; preds = %19
  %24 = load i32*, i32** %4, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = call i32* @CfgGetFolder(i32* %24, i8* %25)
  store i32* %26, i32** %7, align 8
  %27 = load i32*, i32** %7, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %39

30:                                               ; preds = %23
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = call i32 @SiLoadTrafficInner(i32* %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32* %33)
  %35 = load i32*, i32** %7, align 8
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i32 @SiLoadTrafficInner(i32* %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32* %37)
  br label %39

39:                                               ; preds = %30, %29, %22
  ret void
}

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32* @CfgGetFolder(i32*, i8*) #1

declare dso_local i32 @SiLoadTrafficInner(i32*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
