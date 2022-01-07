; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_clearpktopts.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_ip6_output.c_ip6_clearpktopts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip6_pktopts = type { i32, i32, i32*, i32, %struct.TYPE_2__, i32*, i32*, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32* }

@IPV6_PKTINFO = common dso_local global i32 0, align 4
@M_IP6OPT = common dso_local global i32 0, align 4
@IPV6_HOPLIMIT = common dso_local global i32 0, align 4
@IPV6_TCLASS = common dso_local global i32 0, align 4
@IPV6_NEXTHOP = common dso_local global i32 0, align 4
@IPV6_HOPOPTS = common dso_local global i32 0, align 4
@IPV6_RTHDRDSTOPTS = common dso_local global i32 0, align 4
@IPV6_RTHDR = common dso_local global i32 0, align 4
@IPV6_DSTOPTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip6_clearpktopts(%struct.ip6_pktopts* %0, i32 %1) #0 {
  %3 = alloca %struct.ip6_pktopts*, align 8
  %4 = alloca i32, align 4
  store %struct.ip6_pktopts* %0, %struct.ip6_pktopts** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %6 = icmp eq %struct.ip6_pktopts* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %163

8:                                                ; preds = %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %15, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IPV6_PKTINFO, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %29

15:                                               ; preds = %11, %8
  %16 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %17 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %16, i32 0, i32 9
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %22 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %21, i32 0, i32 9
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* @M_IP6OPT, align 4
  %25 = call i32 @FREE(i32* %23, i32 %24)
  br label %26

26:                                               ; preds = %20, %15
  %27 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %28 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %27, i32 0, i32 9
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %26, %11
  %30 = load i32, i32* %4, align 4
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @IPV6_HOPLIMIT, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %29
  %37 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %38 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %37, i32 0, i32 0
  store i32 -1, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %46, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @IPV6_TCLASS, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %39
  %47 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %48 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %47, i32 0, i32 1
  store i32 -1, i32* %48, align 4
  br label %49

49:                                               ; preds = %46, %42
  %50 = load i32, i32* %4, align 4
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IPV6_NEXTHOP, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %73

56:                                               ; preds = %52, %49
  %57 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %58 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %57, i32 0, i32 8
  %59 = call i32 @ROUTE_RELEASE(i32* %58)
  %60 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %61 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %60, i32 0, i32 7
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %70

64:                                               ; preds = %56
  %65 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %66 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %65, i32 0, i32 7
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @M_IP6OPT, align 4
  %69 = call i32 @FREE(i32* %67, i32 %68)
  br label %70

70:                                               ; preds = %64, %56
  %71 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %72 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %71, i32 0, i32 7
  store i32* null, i32** %72, align 8
  br label %73

73:                                               ; preds = %70, %52
  %74 = load i32, i32* %4, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* %4, align 4
  %78 = load i32, i32* @IPV6_HOPOPTS, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %94

80:                                               ; preds = %76, %73
  %81 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %82 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %81, i32 0, i32 6
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %91

85:                                               ; preds = %80
  %86 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %87 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %86, i32 0, i32 6
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @M_IP6OPT, align 4
  %90 = call i32 @FREE(i32* %88, i32 %89)
  br label %91

91:                                               ; preds = %85, %80
  %92 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %93 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %92, i32 0, i32 6
  store i32* null, i32** %93, align 8
  br label %94

94:                                               ; preds = %91, %76
  %95 = load i32, i32* %4, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %4, align 4
  %99 = load i32, i32* @IPV6_RTHDRDSTOPTS, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %115

101:                                              ; preds = %97, %94
  %102 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %103 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %108 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %107, i32 0, i32 5
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* @M_IP6OPT, align 4
  %111 = call i32 @FREE(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %114 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %113, i32 0, i32 5
  store i32* null, i32** %114, align 8
  br label %115

115:                                              ; preds = %112, %97
  %116 = load i32, i32* %4, align 4
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %122, label %118

118:                                              ; preds = %115
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* @IPV6_RTHDR, align 4
  %121 = icmp eq i32 %119, %120
  br i1 %121, label %122, label %142

122:                                              ; preds = %118, %115
  %123 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %124 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %123, i32 0, i32 4
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %122
  %129 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %130 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %129, i32 0, i32 4
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* @M_IP6OPT, align 4
  %134 = call i32 @FREE(i32* %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %122
  %136 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %137 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %136, i32 0, i32 4
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  store i32* null, i32** %138, align 8
  %139 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %140 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %139, i32 0, i32 3
  %141 = call i32 @ROUTE_RELEASE(i32* %140)
  br label %142

142:                                              ; preds = %135, %118
  %143 = load i32, i32* %4, align 4
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %149, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %4, align 4
  %147 = load i32, i32* @IPV6_DSTOPTS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %163

149:                                              ; preds = %145, %142
  %150 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %151 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %150, i32 0, i32 2
  %152 = load i32*, i32** %151, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %154, label %160

154:                                              ; preds = %149
  %155 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %156 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @M_IP6OPT, align 4
  %159 = call i32 @FREE(i32* %157, i32 %158)
  br label %160

160:                                              ; preds = %154, %149
  %161 = load %struct.ip6_pktopts*, %struct.ip6_pktopts** %3, align 8
  %162 = getelementptr inbounds %struct.ip6_pktopts, %struct.ip6_pktopts* %161, i32 0, i32 2
  store i32* null, i32** %162, align 8
  br label %163

163:                                              ; preds = %7, %160, %145
  ret void
}

declare dso_local i32 @FREE(i32*, i32) #1

declare dso_local i32 @ROUTE_RELEASE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
