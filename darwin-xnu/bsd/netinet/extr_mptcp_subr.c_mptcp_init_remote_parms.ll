; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_init_remote_parms.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_mptcp_subr.c_mptcp_init_remote_parms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mptcb = type { i64, i64, i64, i32, i32, i32 }

@SHA1_RESULTLEN = common dso_local global i32 0, align 4
@MPTCP_STD_VERSION_0 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mptcp_init_remote_parms(%struct.mptcb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mptcb*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mptcb* %0, %struct.mptcb** %3, align 8
  %7 = load i32, i32* @SHA1_RESULTLEN, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %4, align 8
  %10 = alloca i8, i64 %8, align 16
  store i64 %8, i64* %5, align 8
  %11 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %12 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @mpte_lock_assert_held(i32 %13)
  %15 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %16 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MPTCP_STD_VERSION_0, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %23 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %22, i32 0, i32 4
  %24 = call i32 @mptcp_do_sha1(i32* %23, i8* %10)
  %25 = load i32, i32* @SHA1_RESULTLEN, align 4
  %26 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %27 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %26, i32 0, i32 3
  %28 = ptrtoint i32* %27 to i32
  %29 = call i32 @mptcp_generate_token(i8* %10, i32 %25, i32 %28, i32 4)
  %30 = load i32, i32* @SHA1_RESULTLEN, align 4
  %31 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %32 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %31, i32 0, i32 1
  %33 = ptrtoint i64* %32 to i32
  %34 = call i32 @mptcp_generate_idsn(i8* %10, i32 %30, i32 %33, i32 4)
  %35 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %36 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = add nsw i64 %37, 1
  %39 = load %struct.mptcb*, %struct.mptcb** %3, align 8
  %40 = getelementptr inbounds %struct.mptcb, %struct.mptcb* %39, i32 0, i32 2
  store i64 %38, i64* %40, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %21, %20
  %42 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @mpte_lock_assert_held(i32) #2

declare dso_local i32 @mptcp_do_sha1(i32*, i8*) #2

declare dso_local i32 @mptcp_generate_token(i8*, i32, i32, i32) #2

declare dso_local i32 @mptcp_generate_idsn(i8*, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
