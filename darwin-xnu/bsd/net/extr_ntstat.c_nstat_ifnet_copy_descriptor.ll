; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_copy_descriptor.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_ifnet_copy_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.nstat_ifnet_cookie = type { %struct.ifnet* }
%struct.ifnet = type { %struct.TYPE_5__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @nstat_ifnet_copy_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_ifnet_copy_descriptor(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.nstat_ifnet_cookie*, align 8
  %10 = alloca %struct.ifnet*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %8, align 8
  %13 = load i64, i64* %5, align 8
  %14 = inttoptr i64 %13 to %struct.nstat_ifnet_cookie*
  store %struct.nstat_ifnet_cookie* %14, %struct.nstat_ifnet_cookie** %9, align 8
  %15 = load %struct.nstat_ifnet_cookie*, %struct.nstat_ifnet_cookie** %9, align 8
  %16 = getelementptr inbounds %struct.nstat_ifnet_cookie, %struct.nstat_ifnet_cookie* %15, i32 0, i32 0
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %10, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = icmp ult i64 %19, 20
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @EINVAL, align 4
  store i32 %22, i32* %4, align 4
  br label %77

23:                                               ; preds = %3
  %24 = load i64, i64* %5, align 8
  %25 = call i64 @nstat_ifnet_gone(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  store i32 %28, i32* %4, align 4
  br label %77

29:                                               ; preds = %23
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = call i32 @bzero(%struct.TYPE_6__* %30, i32 20)
  %32 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %33 = call i32 @ifnet_lock_shared(%struct.ifnet* %32)
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %38 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @strlcpy(i32 %36, i32 %39, i32 4)
  %41 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %42 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %47 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %57 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp ult i64 %60, 4
  br i1 %61, label %62, label %71

62:                                               ; preds = %29
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %67 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @memcpy(i32 %65, i32 %69, i32 4)
  br label %71

71:                                               ; preds = %62, %29
  %72 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %74 = call i32 @nstat_ifnet_copy_link_status(%struct.ifnet* %72, %struct.TYPE_6__* %73)
  %75 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  %76 = call i32 @ifnet_lock_done(%struct.ifnet* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %71, %27, %21
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i64 @nstat_ifnet_gone(i64) #1

declare dso_local i32 @bzero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @ifnet_lock_shared(%struct.ifnet*) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @nstat_ifnet_copy_link_status(%struct.ifnet*, %struct.TYPE_6__*) #1

declare dso_local i32 @ifnet_lock_done(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
