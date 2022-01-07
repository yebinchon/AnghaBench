; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_setpktopts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_setpktopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { i32, i64 }
%struct.ip6_pktopts = type { i32 }
%struct.cmsghdr = type { i32, i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@IPPROTO_IPV6 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip6_setpktopts(%struct.mbuf* %0, %struct.ip6_pktopts* %1, %struct.ip6_pktopts* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.ip6_pktopts*, align 8
  %8 = alloca %struct.ip6_pktopts*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cmsghdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mbuf* %0, %struct.mbuf** %6, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %7, align 8
  store %struct.ip6_pktopts* %2, %struct.ip6_pktopts** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.cmsghdr* null, %struct.cmsghdr** %10, align 8
  %13 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %14 = icmp eq %struct.mbuf* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %17 = icmp eq %struct.ip6_pktopts* %16, null
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %4
  %19 = load i32, i32* @EINVAL, align 4
  store i32 %19, i32* %5, align 4
  br label %102

20:                                               ; preds = %15
  %21 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %22 = call i32 @ip6_initpktopts(%struct.ip6_pktopts* %21)
  %23 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %8, align 8
  %24 = icmp ne %struct.ip6_pktopts* %23, null
  br i1 %24, label %25, label %34

25:                                               ; preds = %20
  %26 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %27 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %8, align 8
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = call i32 @copypktopts(%struct.ip6_pktopts* %26, %struct.ip6_pktopts* %27, i32 %28)
  store i32 %29, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %102

33:                                               ; preds = %25
  br label %34

34:                                               ; preds = %33, %20
  %35 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %36 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %5, align 4
  br label %102

41:                                               ; preds = %34
  %42 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %43 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @CMSG_LEN(i32 0)
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %102

49:                                               ; preds = %41
  %50 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %51 = call %struct.cmsghdr* @M_FIRST_CMSGHDR(%struct.mbuf* %50)
  store %struct.cmsghdr* %51, %struct.cmsghdr** %10, align 8
  br label %52

52:                                               ; preds = %97, %49
  %53 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %54 = icmp ne %struct.cmsghdr* %53, null
  br i1 %54, label %55, label %101

55:                                               ; preds = %52
  %56 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %57 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 24
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %63 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %66 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp sgt i32 %64, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %55
  %70 = load i32, i32* @EINVAL, align 4
  store i32 %70, i32* %5, align 4
  br label %102

71:                                               ; preds = %61
  %72 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %73 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @IPPROTO_IPV6, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %71
  br label %97

78:                                               ; preds = %71
  %79 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %80 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %83 = call i32 @CMSG_DATA(%struct.cmsghdr* %82)
  %84 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %85 = getelementptr inbounds %struct.cmsghdr, %struct.cmsghdr* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = call i32 @CMSG_LEN(i32 0)
  %88 = sub nsw i32 %86, %87
  %89 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @ip6_setpktopt(i32 %81, i32 %83, i32 %88, %struct.ip6_pktopts* %89, i32 0, i32 1, i32 %90)
  store i32 %91, i32* %12, align 4
  %92 = load i32, i32* %12, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %78
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %5, align 4
  br label %102

96:                                               ; preds = %78
  br label %97

97:                                               ; preds = %96, %77
  %98 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %99 = load %struct.cmsghdr*, %struct.cmsghdr** %10, align 8
  %100 = call %struct.cmsghdr* @M_NXT_CMSGHDR(%struct.mbuf* %98, %struct.cmsghdr* %99)
  store %struct.cmsghdr* %100, %struct.cmsghdr** %10, align 8
  br label %52

101:                                              ; preds = %52
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %101, %94, %69, %47, %39, %31, %18
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @ip6_initpktopts(%struct.ip6_pktopts*) #1

declare dso_local i32 @copypktopts(%struct.ip6_pktopts*, %struct.ip6_pktopts*, i32) #1

declare dso_local i32 @CMSG_LEN(i32) #1

declare dso_local %struct.cmsghdr* @M_FIRST_CMSGHDR(%struct.mbuf*) #1

declare dso_local i32 @ip6_setpktopt(i32, i32, i32, %struct.ip6_pktopts*, i32, i32, i32) #1

declare dso_local i32 @CMSG_DATA(%struct.cmsghdr*) #1

declare dso_local %struct.cmsghdr* @M_NXT_CMSGHDR(%struct.mbuf*, %struct.cmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
