; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_to_kamescope.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6.c_in6_to_kamescope.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in6 = type { i32, i32 }
%struct.ifnet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sockaddr_in6*, %struct.ifnet*)* @in6_to_kamescope to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @in6_to_kamescope(%struct.sockaddr_in6* %0, %struct.ifnet* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sockaddr_in6*, align 8
  %5 = alloca %struct.ifnet*, align 8
  %6 = alloca %struct.sockaddr_in6, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sockaddr_in6* %0, %struct.sockaddr_in6** %4, align 8
  store %struct.ifnet* %1, %struct.ifnet** %5, align 8
  %9 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %10 = icmp ne %struct.sockaddr_in6* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @VERIFY(i32 %11)
  %13 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %14 = bitcast %struct.sockaddr_in6* %6 to i8*
  %15 = bitcast %struct.sockaddr_in6* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 %15, i64 8, i1 false)
  %16 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %17 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %16, i32 0, i32 1
  %18 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %19 = call i32 @in6_recoverscope(%struct.sockaddr_in6* %6, i32* %17, %struct.ifnet* %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %3, align 4
  br label %54

24:                                               ; preds = %2
  %25 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %26 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  %27 = call i32 @in6_addr2scopeid(%struct.ifnet* %25, i32* %26)
  store i32 %27, i32* %8, align 4
  %28 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  br label %42

34:                                               ; preds = %24
  %35 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %34
  br label %42

42:                                               ; preds = %41, %31
  %43 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 1
  %44 = call i32 @in6_embedscope(i32* %43, %struct.sockaddr_in6* %6, i32* null, i32* null, i32* null)
  store i32 %44, i32* %7, align 4
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %54

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %6, i32 0, i32 0
  store i32 0, i32* %50, align 4
  %51 = load %struct.sockaddr_in6*, %struct.sockaddr_in6** %4, align 8
  %52 = bitcast %struct.sockaddr_in6* %51 to i8*
  %53 = bitcast %struct.sockaddr_in6* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 8, i1 false)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %49, %47, %39, %22
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @VERIFY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @in6_recoverscope(%struct.sockaddr_in6*, i32*, %struct.ifnet*) #1

declare dso_local i32 @in6_addr2scopeid(%struct.ifnet*, i32*) #1

declare dso_local i32 @in6_embedscope(i32*, %struct.sockaddr_in6*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
