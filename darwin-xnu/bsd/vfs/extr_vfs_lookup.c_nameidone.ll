; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_nameidone.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/vfs/extr_vfs_lookup.c_nameidone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8*, i32 }

@HASBUF = common dso_local global i32 0, align 4
@M_NAMEI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nameidone(%struct.nameidata* %0) #0 {
  %2 = alloca %struct.nameidata*, align 8
  %3 = alloca i8*, align 8
  store %struct.nameidata* %0, %struct.nameidata** %2, align 8
  %4 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %5 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @HASBUF, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %13 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %3, align 8
  %16 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %17 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = load i32, i32* @HASBUF, align 4
  %20 = xor i32 %19, -1
  %21 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %22 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = and i32 %24, %20
  store i32 %25, i32* %23, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load %struct.nameidata*, %struct.nameidata** %2, align 8
  %28 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_NAMEI, align 4
  %32 = call i32 @FREE_ZONE(i8* %26, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @FREE_ZONE(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
