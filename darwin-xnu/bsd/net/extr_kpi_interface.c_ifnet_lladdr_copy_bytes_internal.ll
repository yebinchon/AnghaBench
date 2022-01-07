; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_lladdr_copy_bytes_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_interface.c_ifnet_lladdr_copy_bytes_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.ifaddr* }
%struct.ifaddr = type { i32** }
%struct.TYPE_6__ = type { i32 }

@SOCK_MAXADDRLEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i8*, i64, i32*)* @ifnet_lladdr_copy_bytes_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifnet_lladdr_copy_bytes_internal(%struct.TYPE_5__* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ifaddr*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load i32, i32* @SOCK_MAXADDRLEN, align 4
  %18 = add nsw i32 %17, 1
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %13, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %22 = mul nuw i64 4, %19
  %23 = load i32, i32* @SOCK_MAXADDRLEN, align 4
  %24 = add nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = icmp eq i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @_CASSERT(i32 %27)
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %30 = icmp eq %struct.TYPE_5__* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %4
  %32 = load i8*, i8** %7, align 8
  %33 = icmp eq i8* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %4
  %35 = load i32, i32* @EINVAL, align 4
  store i32 %35, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %76

36:                                               ; preds = %31
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load %struct.ifaddr*, %struct.ifaddr** %38, align 8
  store %struct.ifaddr* %39, %struct.ifaddr** %12, align 8
  %40 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %41 = call i32 @IFA_LOCK_SPIN(%struct.ifaddr* %40)
  %42 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %43 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %42, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = bitcast i32** %44 to i32*
  %46 = bitcast i32* %21 to i8*
  %47 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %48 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %47, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = call %struct.TYPE_6__* @SDL(i32** %49)
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 @bcopy(i32* %45, i8* %46, i64 %53)
  %55 = load %struct.ifaddr*, %struct.ifaddr** %12, align 8
  %56 = call i32 @IFA_UNLOCK(%struct.ifaddr* %55)
  %57 = bitcast i32* %21 to i32**
  %58 = call %struct.TYPE_6__* @SDL(i32** %57)
  %59 = load i32*, i32** %9, align 8
  %60 = call i32* @dlil_ifaddr_bytes(%struct.TYPE_6__* %58, i64* %11, i32* %59)
  store i32* %60, i32** %10, align 8
  %61 = load i64, i64* %11, align 8
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %69

64:                                               ; preds = %36
  %65 = load i8*, i8** %7, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @bzero(i8* %65, i64 %66)
  %68 = load i32, i32* @EMSGSIZE, align 4
  store i32 %68, i32* %15, align 4
  br label %74

69:                                               ; preds = %36
  %70 = load i32*, i32** %10, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i32 @bcopy(i32* %70, i8* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %64
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %5, align 4
  store i32 1, i32* %16, align 4
  br label %76

76:                                               ; preds = %74, %34
  %77 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %77)
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_CASSERT(i32) #2

declare dso_local i32 @IFA_LOCK_SPIN(%struct.ifaddr*) #2

declare dso_local i32 @bcopy(i32*, i8*, i64) #2

declare dso_local %struct.TYPE_6__* @SDL(i32**) #2

declare dso_local i32 @IFA_UNLOCK(%struct.ifaddr*) #2

declare dso_local i32* @dlil_ifaddr_bytes(%struct.TYPE_6__*, i64*, i32*) #2

declare dso_local i32 @bzero(i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
