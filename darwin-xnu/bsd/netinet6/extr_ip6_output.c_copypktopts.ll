; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_copypktopts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_copypktopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { %struct.TYPE_3__*, i32*, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"copypktopts: invalid argument\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@M_IP6OPT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ip6po_hbh = common dso_local global i32 0, align 4
@ip6po_dest1 = common dso_local global i32 0, align 4
@ip6po_dest2 = common dso_local global i32 0, align 4
@ip6po_rthdr = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip6_pktopts*, %struct.ip6_pktopts*, i32)* @copypktopts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copypktopts(%struct.ip6_pktopts* %0, %struct.ip6_pktopts* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip6_pktopts*, align 8
  %6 = alloca %struct.ip6_pktopts*, align 8
  %7 = alloca i32, align 4
  store %struct.ip6_pktopts* %0, %struct.ip6_pktopts** %5, align 8
  store %struct.ip6_pktopts* %1, %struct.ip6_pktopts** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %9 = icmp eq %struct.ip6_pktopts* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %3
  %11 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %12 = icmp eq %struct.ip6_pktopts* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %10, %3
  %14 = call i32 @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  store i32 %15, i32* %4, align 4
  br label %112

16:                                               ; preds = %10
  %17 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %18 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %21 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %23 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %26 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %28 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %31 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %33 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %60

36:                                               ; preds = %16
  %37 = load i32, i32* @M_IP6OPT, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i8* @_MALLOC(i32 4, i32 %37, i32 %38)
  %40 = bitcast i8* %39 to i32*
  %41 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %42 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %41, i32 0, i32 1
  store i32* %40, i32** %42, align 8
  %43 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %44 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* @M_NOWAIT, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %108

52:                                               ; preds = %47, %36
  %53 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %54 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %58 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  store i32 %56, i32* %59, align 4
  br label %60

60:                                               ; preds = %52, %16
  %61 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %62 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = icmp ne %struct.TYPE_3__* %63, null
  br i1 %64, label %65, label %99

65:                                               ; preds = %60
  %66 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %67 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @M_IP6OPT, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i8* @_MALLOC(i32 %70, i32 %71, i32 %72)
  %74 = bitcast i8* %73 to %struct.TYPE_3__*
  %75 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %76 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %75, i32 0, i32 0
  store %struct.TYPE_3__* %74, %struct.TYPE_3__** %76, align 8
  %77 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %78 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = icmp eq %struct.TYPE_3__* %79, null
  br i1 %80, label %81, label %86

81:                                               ; preds = %65
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @M_NOWAIT, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %81
  br label %108

86:                                               ; preds = %81, %65
  %87 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %88 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %91 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %6, align 8
  %94 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %93, i32 0, i32 0
  %95 = load %struct.TYPE_3__*, %struct.TYPE_3__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @bcopy(%struct.TYPE_3__* %89, %struct.TYPE_3__* %92, i32 %97)
  br label %99

99:                                               ; preds = %86, %60
  %100 = load i32, i32* @ip6po_hbh, align 4
  %101 = call i32 @PKTOPT_EXTHDRCPY(i32 %100)
  %102 = load i32, i32* @ip6po_dest1, align 4
  %103 = call i32 @PKTOPT_EXTHDRCPY(i32 %102)
  %104 = load i32, i32* @ip6po_dest2, align 4
  %105 = call i32 @PKTOPT_EXTHDRCPY(i32 %104)
  %106 = load i32, i32* @ip6po_rthdr, align 4
  %107 = call i32 @PKTOPT_EXTHDRCPY(i32 %106)
  store i32 0, i32* %4, align 4
  br label %112

108:                                              ; preds = %85, %51
  %109 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %5, align 8
  %110 = call i32 @ip6_clearpktopts(%struct.ip6_pktopts* %109, i32 -1)
  %111 = load i32, i32* @ENOBUFS, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %108, %99, %13
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i8* @_MALLOC(i32, i32, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_3__*, %struct.TYPE_3__*, i32) #1

declare dso_local i32 @PKTOPT_EXTHDRCPY(i32) #1

declare dso_local i32 @ip6_clearpktopts(%struct.ip6_pktopts*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
