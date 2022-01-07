; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_socket_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf.c_pf_socket_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inpcbinfo = type { i32 }
%struct.pf_pdesc = type { i32, i32, %struct.TYPE_8__, %struct.pf_addr*, %struct.pf_addr*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.pf_addr = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { i32*, i8** }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@UID_MAX = common dso_local global i32 0, align 4
@GID_MAX = common dso_local global i32 0, align 4
@NO_PID = common dso_local global i32 0, align 4
@tcbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 4
@udbinfo = common dso_local global %struct.inpcbinfo zeroinitializer, align 4
@PF_IN = common dso_local global i32 0, align 4
@INPLOOKUP_WILDCARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pf_socket_lookup(i32 %0, %struct.pf_pdesc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pf_pdesc*, align 8
  %6 = alloca %struct.pf_addr*, align 8
  %7 = alloca %struct.pf_addr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inpcbinfo*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.pf_pdesc* %1, %struct.pf_pdesc** %5, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %14 = icmp eq %struct.pf_pdesc* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %99

16:                                               ; preds = %2
  %17 = load i32, i32* @UID_MAX, align 4
  %18 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %19 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @GID_MAX, align 4
  %22 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %23 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load i32, i32* @NO_PID, align 4
  %26 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %27 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 8
  %29 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %30 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %72 [
    i32 129, label %32
    i32 128, label %52
  ]

32:                                               ; preds = %16
  %33 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %34 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = icmp eq %struct.TYPE_5__* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %99

39:                                               ; preds = %32
  %40 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %41 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %8, align 4
  %46 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %47 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %9, align 4
  store %struct.inpcbinfo* @tcbinfo, %struct.inpcbinfo** %10, align 8
  br label %73

52:                                               ; preds = %16
  %53 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %54 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %53, i32 0, i32 5
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = icmp eq %struct.TYPE_6__* %56, null
  br i1 %57, label %58, label %59

58:                                               ; preds = %52
  store i32 -1, i32* %3, align 4
  br label %99

59:                                               ; preds = %52
  %60 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %61 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %8, align 4
  %66 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %67 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  store i32 %71, i32* %9, align 4
  store %struct.inpcbinfo* @udbinfo, %struct.inpcbinfo** %10, align 8
  br label %73

72:                                               ; preds = %16
  store i32 -1, i32* %3, align 4
  br label %99

73:                                               ; preds = %59, %39
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @PF_IN, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %84

77:                                               ; preds = %73
  %78 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %79 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %78, i32 0, i32 3
  %80 = load %struct.pf_addr*, %struct.pf_addr** %79, align 8
  store %struct.pf_addr* %80, %struct.pf_addr** %6, align 8
  %81 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %82 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %81, i32 0, i32 4
  %83 = load %struct.pf_addr*, %struct.pf_addr** %82, align 8
  store %struct.pf_addr* %83, %struct.pf_addr** %7, align 8
  br label %94

84:                                               ; preds = %73
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %12, align 4
  store i32 %87, i32* %9, align 4
  %88 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %89 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %88, i32 0, i32 4
  %90 = load %struct.pf_addr*, %struct.pf_addr** %89, align 8
  store %struct.pf_addr* %90, %struct.pf_addr** %6, align 8
  %91 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %92 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %91, i32 0, i32 3
  %93 = load %struct.pf_addr*, %struct.pf_addr** %92, align 8
  store %struct.pf_addr* %93, %struct.pf_addr** %7, align 8
  br label %94

94:                                               ; preds = %84, %77
  %95 = load %struct.pf_pdesc*, %struct.pf_pdesc** %5, align 8
  %96 = getelementptr inbounds %struct.pf_pdesc, %struct.pf_pdesc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  switch i32 %97, label %98 [
  ]

98:                                               ; preds = %94
  store i32 -1, i32* %3, align 4
  br label %99

99:                                               ; preds = %98, %72, %58, %38, %15
  %100 = load i32, i32* %3, align 4
  ret i32 %100
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
