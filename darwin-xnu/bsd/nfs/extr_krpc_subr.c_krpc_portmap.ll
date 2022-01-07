; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_krpc_subr.c_krpc_portmap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/nfs/extr_krpc_subr.c_krpc_portmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sockaddr_in = type { i8* }
%struct.sdata = type { i64, i64, i64, i64 }
%struct.rdata = type { i8*, i8* }

@PMAPPROG = common dso_local global i64 0, align 8
@PMAPPORT = common dso_local global i32 0, align 4
@MBUF_WAITOK = common dso_local global i32 0, align 4
@MBUF_TYPE_DATA = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PMAPVERS = common dso_local global i32 0, align 4
@PMAPPROC_GETPORT = common dso_local global i32 0, align 4
@EPROGUNAVAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @krpc_portmap(%struct.sockaddr_in* %0, i32 %1, i32 %2, i32 %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sockaddr_in*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8**, align 8
  %12 = alloca %struct.sdata*, align 8
  %13 = alloca %struct.rdata*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.sockaddr_in* %0, %struct.sockaddr_in** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8** %4, i8*** %11, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* @PMAPPROG, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = load i32, i32* @PMAPPORT, align 4
  %22 = call i8* @htons(i32 %21)
  %23 = load i8**, i8*** %11, align 8
  store i8* %22, i8** %23, align 8
  store i32 0, i32* %6, align 4
  br label %103

24:                                               ; preds = %5
  %25 = load i32, i32* @MBUF_WAITOK, align 4
  %26 = load i32, i32* @MBUF_TYPE_DATA, align 4
  %27 = call i32 @mbuf_gethdr(i32 %25, i32 %26, i32* %14)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %15, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  %31 = load i32, i32* %15, align 4
  store i32 %31, i32* %6, align 4
  br label %103

32:                                               ; preds = %24
  %33 = load i32, i32* %14, align 4
  %34 = call i32 @mbuf_setlen(i32 %33, i32 32)
  %35 = load i32, i32* %14, align 4
  %36 = call i32 @mbuf_pkthdr_setlen(i32 %35, i32 32)
  %37 = load i32, i32* %14, align 4
  %38 = call i8* @mbuf_data(i32 %37)
  %39 = bitcast i8* %38 to %struct.sdata*
  store %struct.sdata* %39, %struct.sdata** %12, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = call i8* @htonl(i64 %41)
  %43 = ptrtoint i8* %42 to i64
  %44 = load %struct.sdata*, %struct.sdata** %12, align 8
  %45 = getelementptr inbounds %struct.sdata, %struct.sdata* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = call i8* @htonl(i64 %47)
  %49 = ptrtoint i8* %48 to i64
  %50 = load %struct.sdata*, %struct.sdata** %12, align 8
  %51 = getelementptr inbounds %struct.sdata, %struct.sdata* %50, i32 0, i32 1
  store i64 %49, i64* %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = call i8* @htonl(i64 %53)
  %55 = ptrtoint i8* %54 to i64
  %56 = load %struct.sdata*, %struct.sdata** %12, align 8
  %57 = getelementptr inbounds %struct.sdata, %struct.sdata* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.sdata*, %struct.sdata** %12, align 8
  %59 = getelementptr inbounds %struct.sdata, %struct.sdata* %58, i32 0, i32 3
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @PMAPPORT, align 4
  %61 = call i8* @htons(i32 %60)
  %62 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %63 = getelementptr inbounds %struct.sockaddr_in, %struct.sockaddr_in* %62, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %7, align 8
  %65 = load i32, i32* @SOCK_DGRAM, align 4
  %66 = load i64, i64* @PMAPPROG, align 8
  %67 = load i32, i32* @PMAPVERS, align 4
  %68 = load i32, i32* @PMAPPROC_GETPORT, align 4
  %69 = call i32 @krpc_call(%struct.sockaddr_in* %64, i32 %65, i64 %66, i32 %67, i32 %68, i32* %14, i32* null)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %32
  %73 = load i32, i32* %15, align 4
  store i32 %73, i32* %6, align 4
  br label %103

74:                                               ; preds = %32
  %75 = load i32, i32* %14, align 4
  %76 = call i8* @mbuf_data(i32 %75)
  %77 = bitcast i8* %76 to %struct.rdata*
  store %struct.rdata* %77, %struct.rdata** %13, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @mbuf_len(i32 %78)
  %80 = sext i32 %79 to i64
  %81 = icmp uge i64 %80, 16
  br i1 %81, label %82, label %87

82:                                               ; preds = %74
  %83 = load %struct.rdata*, %struct.rdata** %13, align 8
  %84 = getelementptr inbounds %struct.rdata, %struct.rdata* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load i8**, i8*** %11, align 8
  store i8* %85, i8** %86, align 8
  br label %87

87:                                               ; preds = %82, %74
  %88 = load i32, i32* %14, align 4
  %89 = call i32 @mbuf_len(i32 %88)
  %90 = sext i32 %89 to i64
  %91 = icmp ult i64 %90, 16
  br i1 %91, label %97, label %92

92:                                               ; preds = %87
  %93 = load %struct.rdata*, %struct.rdata** %13, align 8
  %94 = getelementptr inbounds %struct.rdata, %struct.rdata* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %92, %87
  %98 = load i32, i32* @EPROGUNAVAIL, align 4
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %97, %92
  %100 = load i32, i32* %14, align 4
  %101 = call i32 @mbuf_freem(i32 %100)
  %102 = load i32, i32* %15, align 4
  store i32 %102, i32* %6, align 4
  br label %103

103:                                              ; preds = %99, %72, %30, %20
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local i8* @htons(i32) #1

declare dso_local i32 @mbuf_gethdr(i32, i32, i32*) #1

declare dso_local i32 @mbuf_setlen(i32, i32) #1

declare dso_local i32 @mbuf_pkthdr_setlen(i32, i32) #1

declare dso_local i8* @mbuf_data(i32) #1

declare dso_local i8* @htonl(i64) #1

declare dso_local i32 @krpc_call(%struct.sockaddr_in*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i32 @mbuf_len(i32) #1

declare dso_local i32 @mbuf_freem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
