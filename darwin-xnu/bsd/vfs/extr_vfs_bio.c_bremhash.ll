; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bremhash.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_bio.c_bremhash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.buf*, %struct.buf** }

@.str = private unnamed_addr constant [29 x i8] c"bremhash le_prev is deadbeef\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"bremhash: next points to self\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*)* @bremhash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bremhash(%struct.buf* %0) #0 {
  %2 = alloca %struct.buf*, align 8
  store %struct.buf* %0, %struct.buf** %2, align 8
  %3 = load %struct.buf*, %struct.buf** %2, align 8
  %4 = getelementptr inbounds %struct.buf, %struct.buf* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 1
  %6 = load %struct.buf**, %struct.buf*** %5, align 8
  %7 = icmp eq %struct.buf** %6, inttoptr (i64 3735928559 to %struct.buf**)
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %struct.buf*, %struct.buf** %2, align 8
  %12 = getelementptr inbounds %struct.buf, %struct.buf* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.buf*, %struct.buf** %13, align 8
  %15 = load %struct.buf*, %struct.buf** %2, align 8
  %16 = icmp eq %struct.buf* %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %10
  %20 = load %struct.buf*, %struct.buf** %2, align 8
  %21 = getelementptr inbounds %struct.buf, %struct.buf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.buf*, %struct.buf** %22, align 8
  %24 = icmp ne %struct.buf* %23, null
  br i1 %24, label %25, label %36

25:                                               ; preds = %19
  %26 = load %struct.buf*, %struct.buf** %2, align 8
  %27 = getelementptr inbounds %struct.buf, %struct.buf* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.buf**, %struct.buf*** %28, align 8
  %30 = load %struct.buf*, %struct.buf** %2, align 8
  %31 = getelementptr inbounds %struct.buf, %struct.buf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.buf*, %struct.buf** %32, align 8
  %34 = getelementptr inbounds %struct.buf, %struct.buf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  store %struct.buf** %29, %struct.buf*** %35, align 8
  br label %36

36:                                               ; preds = %25, %19
  %37 = load %struct.buf*, %struct.buf** %2, align 8
  %38 = getelementptr inbounds %struct.buf, %struct.buf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.buf*, %struct.buf** %39, align 8
  %41 = load %struct.buf*, %struct.buf** %2, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = load %struct.buf**, %struct.buf*** %43, align 8
  store %struct.buf* %40, %struct.buf** %44, align 8
  ret void
}

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
