; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_options.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6.c_nd6_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%union.nd_opts = type { i64 }
%struct.nd_opt_hdr = type { i32 }
%struct.nd_opt_prefix_info = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"ndopts == NULL in nd6_options\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"uninitialized ndopts in nd6_options\00", align 1
@icmp6stat = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"duplicated ND6 option found (type=%d)\0A\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"nd6_options: unsupported option %d - option ignored\0A\00", align 1
@nd6_maxndopt = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [25 x i8] c"too many loop in nd opt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_options(%union.nd_opts* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.nd_opts*, align 8
  %4 = alloca %struct.nd_opt_hdr*, align 8
  %5 = alloca i32, align 4
  store %union.nd_opts* %0, %union.nd_opts** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %7 = icmp eq %union.nd_opts* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  %11 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %12 = bitcast %union.nd_opts* %11 to i32**
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %10
  %18 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %19 = bitcast %union.nd_opts* %18 to i32**
  %20 = load i32*, i32** %19, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  store i32 0, i32* %2, align 4
  br label %128

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23, %126
  %25 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %26 = call %struct.nd_opt_hdr* @nd6_option(%union.nd_opts* %25)
  store %struct.nd_opt_hdr* %26, %struct.nd_opt_hdr** %4, align 8
  %27 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %28 = icmp eq %struct.nd_opt_hdr* %27, null
  br i1 %28, label %29, label %39

29:                                               ; preds = %24
  %30 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %31 = bitcast %union.nd_opts* %30 to i32**
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @icmp6stat, i32 0, i32 1), align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @icmp6stat, i32 0, i32 1), align 4
  %37 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %38 = call i32 @bzero(%union.nd_opts* %37, i32 8)
  store i32 -1, i32* %2, align 4
  br label %128

39:                                               ; preds = %29, %24
  %40 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %41 = icmp eq %struct.nd_opt_hdr* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %109

43:                                               ; preds = %39
  %44 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %45 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %102 [
    i32 129, label %47
    i32 128, label %47
    i32 134, label %47
    i32 130, label %47
    i32 133, label %47
    i32 132, label %75
    i32 131, label %101
    i32 135, label %101
  ]

47:                                               ; preds = %43, %43, %43, %43, %43
  %48 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %49 = bitcast %union.nd_opts* %48 to %struct.nd_opt_hdr***
  %50 = load %struct.nd_opt_hdr**, %struct.nd_opt_hdr*** %49, align 8
  %51 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %52 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %50, i64 %54
  %56 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %55, align 8
  %57 = icmp ne %struct.nd_opt_hdr* %56, null
  br i1 %57, label %58, label %64

58:                                               ; preds = %47
  %59 = load i32, i32* @LOG_INFO, align 4
  %60 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %61 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @nd6log(i32 %62)
  br label %74

64:                                               ; preds = %47
  %65 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %66 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %67 = bitcast %union.nd_opts* %66 to %struct.nd_opt_hdr***
  %68 = load %struct.nd_opt_hdr**, %struct.nd_opt_hdr*** %67, align 8
  %69 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %70 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %68, i64 %72
  store %struct.nd_opt_hdr* %65, %struct.nd_opt_hdr** %73, align 8
  br label %74

74:                                               ; preds = %64, %58
  br label %108

75:                                               ; preds = %43
  %76 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %77 = bitcast %union.nd_opts* %76 to %struct.nd_opt_hdr***
  %78 = load %struct.nd_opt_hdr**, %struct.nd_opt_hdr*** %77, align 8
  %79 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %80 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %78, i64 %82
  %84 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %83, align 8
  %85 = icmp eq %struct.nd_opt_hdr* %84, null
  br i1 %85, label %86, label %96

86:                                               ; preds = %75
  %87 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %88 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %89 = bitcast %union.nd_opts* %88 to %struct.nd_opt_hdr***
  %90 = load %struct.nd_opt_hdr**, %struct.nd_opt_hdr*** %89, align 8
  %91 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %92 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %90, i64 %94
  store %struct.nd_opt_hdr* %87, %struct.nd_opt_hdr** %95, align 8
  br label %96

96:                                               ; preds = %86, %75
  %97 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %98 = bitcast %struct.nd_opt_hdr* %97 to %struct.nd_opt_prefix_info*
  %99 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %100 = bitcast %union.nd_opts* %99 to %struct.nd_opt_prefix_info**
  store %struct.nd_opt_prefix_info* %98, %struct.nd_opt_prefix_info** %100, align 8
  br label %108

101:                                              ; preds = %43, %43
  br label %108

102:                                              ; preds = %43
  %103 = load i32, i32* @LOG_DEBUG, align 4
  %104 = load %struct.nd_opt_hdr*, %struct.nd_opt_hdr** %4, align 8
  %105 = getelementptr inbounds %struct.nd_opt_hdr, %struct.nd_opt_hdr* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @nd6log(i32 %106)
  br label %108

108:                                              ; preds = %102, %101, %96, %74
  br label %109

109:                                              ; preds = %108, %42
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  %112 = load i32, i32* %5, align 4
  %113 = load i32, i32* @nd6_maxndopt, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %120

115:                                              ; preds = %109
  %116 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @icmp6stat, i32 0, i32 0), align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @icmp6stat, i32 0, i32 0), align 4
  %118 = load i32, i32* @LOG_INFO, align 4
  %119 = call i32 @nd6log(i32 ptrtoint ([25 x i8]* @.str.4 to i32))
  br label %127

120:                                              ; preds = %109
  %121 = load %union.nd_opts*, %union.nd_opts** %3, align 8
  %122 = bitcast %union.nd_opts* %121 to i64*
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %120
  br label %127

126:                                              ; preds = %120
  br label %24

127:                                              ; preds = %125, %115
  store i32 0, i32* %2, align 4
  br label %128

128:                                              ; preds = %127, %34, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @panic(i8*) #1

declare dso_local %struct.nd_opt_hdr* @nd6_option(%union.nd_opts*) #1

declare dso_local i32 @bzero(%union.nd_opts*, i32) #1

declare dso_local i32 @nd6log(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
