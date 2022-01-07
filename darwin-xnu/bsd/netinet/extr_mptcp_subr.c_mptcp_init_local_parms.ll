; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_init_local_parms.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_init_local_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptses = type { %struct.mptcb* }
%struct.mptcb = type { i64, i64, i64, i64, i32, i32 }

@SHA1_RESULTLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mptses*)* @mptcp_init_local_parms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptcp_init_local_parms(%struct.mptses* %0) #0 {
  %2 = alloca %struct.mptses*, align 8
  %3 = alloca %struct.mptcb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.mptses* %0, %struct.mptses** %2, align 8
  %6 = load %struct.mptses*, %struct.mptses** %2, align 8
  %7 = getelementptr inbounds %struct.mptses, %struct.mptses* %6, i32 0, i32 0
  %8 = load %struct.mptcb*, %struct.mptcb** %7, align 8
  store %struct.mptcb* %8, %struct.mptcb** %3, align 8
  %9 = load i32, i32* @SHA1_RESULTLEN, align 4
  %10 = zext i32 %9 to i64
  %11 = call i8* @llvm.stacksave()
  store i8* %11, i8** %4, align 8
  %12 = alloca i8, i64 %10, align 16
  store i64 %10, i64* %5, align 8
  %13 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %14 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %13, i32 0, i32 5
  %15 = call i32 @read_frandom(i32* %14, i32 4)
  %16 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %17 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %16, i32 0, i32 5
  %18 = call i32 @mptcp_do_sha1(i32* %17, i8* %12)
  %19 = load i32, i32* @SHA1_RESULTLEN, align 4
  %20 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %21 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %20, i32 0, i32 4
  %22 = ptrtoint i32* %21 to i32
  %23 = call i32 @mptcp_generate_token(i8* %12, i32 %19, i32 %22, i32 4)
  %24 = load i32, i32* @SHA1_RESULTLEN, align 4
  %25 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %26 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %25, i32 0, i32 2
  %27 = ptrtoint i64* %26 to i32
  %28 = call i32 @mptcp_generate_idsn(i8* %12, i32 %24, i32 %27, i32 4)
  %29 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %30 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %31, 1
  %33 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %34 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %33, i32 0, i32 3
  store i64 %32, i64* %34, align 8
  %35 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %36 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %35, i32 0, i32 0
  store i64 %32, i64* %36, align 8
  %37 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %38 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %41 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %40, i32 0, i32 1
  store i64 %39, i64* %41, align 8
  %42 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %43 = call i32 @mptcp_conn_properties(%struct.mptcb* %42)
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @read_frandom(i32*, i32) #2

declare dso_local i32 @mptcp_do_sha1(i32*, i8*) #2

declare dso_local i32 @mptcp_generate_token(i8*, i32, i32, i32) #2

declare dso_local i32 @mptcp_generate_idsn(i8*, i32, i32, i32) #2

declare dso_local i32 @mptcp_conn_properties(%struct.mptcb*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
