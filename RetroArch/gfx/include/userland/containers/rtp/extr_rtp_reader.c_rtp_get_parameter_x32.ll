; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_rtp_get_parameter_x32.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_rtp_get_parameter_x32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtp_get_parameter_x32(i32* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_3__, align 8
  %9 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  store i8* %10, i8** %11, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i64 @vc_containers_list_find_entry(i32* %12, %struct.TYPE_3__* %8)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %36

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %36

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strtoul(i8* %21, i8** %9, i32 16)
  %23 = load i32*, i32** %7, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %24, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %19
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br label %33

33:                                               ; preds = %28, %19
  %34 = phi i1 [ false, %19 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %4, align 4
  br label %37

36:                                               ; preds = %15, %3
  store i32 0, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @vc_containers_list_find_entry(i32*, %struct.TYPE_3__*) #1

declare dso_local i32 @strtoul(i8*, i8**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
