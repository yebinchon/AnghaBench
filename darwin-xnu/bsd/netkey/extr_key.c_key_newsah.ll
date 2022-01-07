; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_newsah.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_newsah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secashead = type { i32, i32, i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.secasindex = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sockaddr_in = type { i8* }
%struct.sockaddr_in6 = type { i8* }

@.str = private unnamed_addr constant [39 x i8] c"key_newsaidx: NULL pointer is passed.\0A\00", align 1
@IPSEC_PORT_ANY = common dso_local global i8* null, align 8
@SADB_SASTATE_MATURE = common dso_local global i32 0, align 4
@sahtree = common dso_local global i32 0, align 4
@chain = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.secashead* (%struct.secasindex*, i64, i32, i32)* @key_newsah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.secashead* @key_newsah(%struct.secasindex* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.secashead*, align 8
  %6 = alloca %struct.secasindex*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.secashead*, align 8
  store %struct.secasindex* %0, %struct.secasindex** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %12 = icmp eq %struct.secasindex* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %4
  %16 = call %struct.secashead* (...) @keydb_newsecashead()
  store %struct.secashead* %16, %struct.secashead** %10, align 8
  %17 = load %struct.secashead*, %struct.secashead** %10, align 8
  %18 = icmp eq %struct.secashead* %17, null
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store %struct.secashead* null, %struct.secashead** %5, align 8
  br label %88

20:                                               ; preds = %15
  %21 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %22 = load %struct.secashead*, %struct.secashead** %10, align 8
  %23 = getelementptr inbounds %struct.secashead, %struct.secashead* %22, i32 0, i32 4
  %24 = call i32 @bcopy(%struct.secasindex* %21, %struct.TYPE_6__* %23, i32 8)
  %25 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %26 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %43 [
    i32 129, label %29
    i32 128, label %36
  ]

29:                                               ; preds = %20
  %30 = load i8*, i8** @IPSEC_PORT_ANY, align 8
  %31 = load %struct.secashead*, %struct.secashead** %10, align 8
  %32 = getelementptr inbounds %struct.secashead, %struct.secashead* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = bitcast i32* %33 to %struct.sockaddr_in*
  %35 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %34, i32 0, i32 0
  store i8* %30, i8** %35, align 4
  br label %44

36:                                               ; preds = %20
  %37 = load i8*, i8** @IPSEC_PORT_ANY, align 8
  %38 = load %struct.secashead*, %struct.secashead** %10, align 8
  %39 = getelementptr inbounds %struct.secashead, %struct.secashead* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = bitcast i32* %40 to %struct.sockaddr_in6*
  %42 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %41, i32 0, i32 0
  store i8* %37, i8** %42, align 4
  br label %44

43:                                               ; preds = %20
  br label %44

44:                                               ; preds = %43, %36, %29
  %45 = load %struct.secasindex*, %struct.secasindex** %6, align 8
  %46 = getelementptr inbounds %struct.secasindex, %struct.secasindex* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %63 [
    i32 129, label %49
    i32 128, label %56
  ]

49:                                               ; preds = %44
  %50 = load i8*, i8** @IPSEC_PORT_ANY, align 8
  %51 = load %struct.secashead*, %struct.secashead** %10, align 8
  %52 = getelementptr inbounds %struct.secashead, %struct.secashead* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to %struct.sockaddr_in*
  %55 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %54, i32 0, i32 0
  store i8* %50, i8** %55, align 4
  br label %64

56:                                               ; preds = %44
  %57 = load i8*, i8** @IPSEC_PORT_ANY, align 8
  %58 = load %struct.secashead*, %struct.secashead** %10, align 8
  %59 = getelementptr inbounds %struct.secashead, %struct.secashead* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = bitcast i32* %60 to %struct.sockaddr_in6*
  %62 = getelementptr inbounds %struct.sockaddr_in6, %struct.sockaddr_in6* %61, i32 0, i32 0
  store i8* %57, i8** %62, align 4
  br label %64

63:                                               ; preds = %44
  br label %64

64:                                               ; preds = %63, %56, %49
  %65 = load i32, i32* %8, align 4
  %66 = load %struct.secashead*, %struct.secashead** %10, align 8
  %67 = getelementptr inbounds %struct.secashead, %struct.secashead* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %64
  %71 = load i64, i64* %7, align 8
  %72 = call i32 @ifnet_reference(i64 %71)
  %73 = load i64, i64* %7, align 8
  %74 = load %struct.secashead*, %struct.secashead** %10, align 8
  %75 = getelementptr inbounds %struct.secashead, %struct.secashead* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  br label %76

76:                                               ; preds = %70, %64
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.secashead*, %struct.secashead** %10, align 8
  %79 = getelementptr inbounds %struct.secashead, %struct.secashead* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 4
  %80 = load i32, i32* @SADB_SASTATE_MATURE, align 4
  %81 = load %struct.secashead*, %struct.secashead** %10, align 8
  %82 = getelementptr inbounds %struct.secashead, %struct.secashead* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.secashead*, %struct.secashead** %10, align 8
  %84 = load i32, i32* @chain, align 4
  %85 = call i32 @LIST_INSERT_HEAD(i32* @sahtree, %struct.secashead* %83, i32 %84)
  %86 = call i32 (...) @key_start_timehandler()
  %87 = load %struct.secashead*, %struct.secashead** %10, align 8
  store %struct.secashead* %87, %struct.secashead** %5, align 8
  br label %88

88:                                               ; preds = %76, %19
  %89 = load %struct.secashead*, %struct.secashead** %5, align 8
  ret %struct.secashead* %89
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.secashead* @keydb_newsecashead(...) #1

declare dso_local i32 @bcopy(%struct.secasindex*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @ifnet_reference(i64) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.secashead*, i32) #1

declare dso_local i32 @key_start_timehandler(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
