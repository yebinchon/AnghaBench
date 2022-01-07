; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_src_ioctl.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_in6_src.c_in6_src_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_addrpolicy = type { i64, i64, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@ADDR_LABEL_NOTAPP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_src_ioctl(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.in6_addrpolicy, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 129
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 128
  br i1 %12, label %13, label %15

13:                                               ; preds = %10
  %14 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %14, i32* %3, align 4
  br label %64

15:                                               ; preds = %10, %2
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @bcopy(i32 %16, %struct.in6_addrpolicy* %7, i32 32)
  %18 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ADDR_LABEL_NOTAPP, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @EINVAL, align 4
  store i32 %23, i32* %3, align 4
  br label %64

24:                                               ; preds = %15
  %25 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = call i64 @in6_mask2len(%struct.TYPE_8__* %26, i32* null)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %3, align 4
  br label %64

31:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %53, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %56

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %43
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %35
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %32

56:                                               ; preds = %32
  %57 = getelementptr inbounds %struct.in6_addrpolicy, %struct.in6_addrpolicy* %7, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load i32, i32* %4, align 4
  switch i32 %58, label %63 [
    i32 129, label %59
    i32 128, label %61
  ]

59:                                               ; preds = %56
  %60 = load i32, i32* @ENOTSUP, align 4
  store i32 %60, i32* %3, align 4
  br label %64

61:                                               ; preds = %56
  %62 = load i32, i32* @ENOTSUP, align 4
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %56
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %61, %59, %29, %22, %13
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @bcopy(i32, %struct.in6_addrpolicy*, i32) #1

declare dso_local i64 @in6_mask2len(%struct.TYPE_8__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
