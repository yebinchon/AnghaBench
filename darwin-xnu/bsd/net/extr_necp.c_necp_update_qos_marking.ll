; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_update_qos_marking.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_necp.c_necp_update_qos_marking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { i64, i8* }
%struct.necp_route_rule = type { i64, i64*, i64*, i64, i64, i64, i64 }

@FALSE = common dso_local global i32 0, align 4
@necp_route_rules = common dso_local global i32 0, align 4
@NECP_ROUTE_RULE_QOS_MARKING = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@MAX_ROUTE_RULE_INTERFACES = common dso_local global i32 0, align 4
@necp_debug = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"QoS Marking : Interface match %d for Rule %d Allowed %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"QoS Marking: C:%d WF:%d W:%d E:%d for Rule %d Allowed %d\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"QoS Marking: Rule %d ifp %s Allowed %d\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifnet*, i8*)* @necp_update_qos_marking to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @necp_update_qos_marking(%struct.ifnet* %0, i8* %1) #0 {
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.necp_route_rule*, align 8
  store %struct.ifnet* %0, %struct.ifnet** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store %struct.necp_route_rule* null, %struct.necp_route_rule** %7, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call %struct.necp_route_rule* @necp_lookup_route_rule_locked(i32* @necp_route_rules, i8* %9)
  store %struct.necp_route_rule* %10, %struct.necp_route_rule** %7, align 8
  %11 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %12 = icmp eq %struct.necp_route_rule* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %5, align 4
  br label %156

15:                                               ; preds = %2
  %16 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %17 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @NECP_ROUTE_RULE_QOS_MARKING, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load i32, i32* @TRUE, align 4
  br label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @FALSE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %5, align 4
  %27 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %28 = icmp eq %struct.ifnet* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %156

30:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %87, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @MAX_ROUTE_RULE_INTERFACES, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %31
  %36 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %37 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %90

45:                                               ; preds = %35
  %46 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %47 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NECP_ROUTE_RULE_QOS_MARKING, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %87

56:                                               ; preds = %45
  %57 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %58 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %63, %66
  br i1 %67, label %68, label %86

68:                                               ; preds = %56
  %69 = load i32, i32* @TRUE, align 4
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* @necp_debug, align 4
  %71 = icmp sgt i32 %70, 2
  br i1 %71, label %72, label %85

72:                                               ; preds = %68
  %73 = load i32, i32* @LOG_DEBUG, align 4
  %74 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %75 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load i8*, i8** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 (i32, i8*, i8*, i8*, i32, ...) @NECPLOG(i32 %73, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* %81, i8* %82, i32 %83)
  br label %85

85:                                               ; preds = %72, %68
  br label %156

86:                                               ; preds = %56
  br label %87

87:                                               ; preds = %86, %55
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %31

90:                                               ; preds = %44, %31
  %91 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %92 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @NECP_ROUTE_RULE_QOS_MARKING, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %98 = call i64 @IFNET_IS_CELLULAR(%struct.ifnet* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %130, label %100

100:                                              ; preds = %96, %90
  %101 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %102 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NECP_ROUTE_RULE_QOS_MARKING, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %108 = call i64 @IFNET_IS_WIFI(%struct.ifnet* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %130, label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %112 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %111, i32 0, i32 5
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @NECP_ROUTE_RULE_QOS_MARKING, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %118 = call i64 @IFNET_IS_WIRED(%struct.ifnet* %117)
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %130, label %120

120:                                              ; preds = %116, %110
  %121 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %122 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @NECP_ROUTE_RULE_QOS_MARKING, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %155

126:                                              ; preds = %120
  %127 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %128 = call i64 @IFNET_IS_EXPENSIVE(%struct.ifnet* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %155

130:                                              ; preds = %126, %116, %106, %96
  %131 = load i32, i32* @TRUE, align 4
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @necp_debug, align 4
  %133 = icmp sgt i32 %132, 2
  br i1 %133, label %134, label %154

134:                                              ; preds = %130
  %135 = load i32, i32* @LOG_DEBUG, align 4
  %136 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %137 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = inttoptr i64 %138 to i8*
  %140 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %141 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %145 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = trunc i64 %146 to i32
  %148 = load %struct.necp_route_rule*, %struct.necp_route_rule** %7, align 8
  %149 = getelementptr inbounds %struct.necp_route_rule, %struct.necp_route_rule* %148, i32 0, i32 6
  %150 = load i64, i64* %149, align 8
  %151 = load i8*, i8** %4, align 8
  %152 = load i32, i32* %5, align 4
  %153 = call i32 (i32, i8*, i8*, i8*, i32, ...) @NECPLOG(i32 %135, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0), i8* %139, i8* %143, i32 %147, i64 %150, i8* %151, i32 %152)
  br label %154

154:                                              ; preds = %134, %130
  br label %156

155:                                              ; preds = %126, %120
  br label %156

156:                                              ; preds = %155, %154, %85, %29, %13
  %157 = load i32, i32* @necp_debug, align 4
  %158 = icmp sgt i32 %157, 1
  br i1 %158, label %159, label %173

159:                                              ; preds = %156
  %160 = load i32, i32* @LOG_DEBUG, align 4
  %161 = load i8*, i8** %4, align 8
  %162 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %163 = icmp ne %struct.ifnet* %162, null
  br i1 %163, label %164, label %168

164:                                              ; preds = %159
  %165 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 1
  %167 = load i8*, i8** %166, align 8
  br label %169

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %164
  %170 = phi i8* [ %167, %164 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %168 ]
  %171 = load i32, i32* %5, align 4
  %172 = call i32 (i32, i8*, i8*, i8*, i32, ...) @NECPLOG(i32 %160, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %161, i8* %170, i32 %171)
  br label %173

173:                                              ; preds = %169, %156
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local %struct.necp_route_rule* @necp_lookup_route_rule_locked(i32*, i8*) #1

declare dso_local i32 @NECPLOG(i32, i8*, i8*, i8*, i32, ...) #1

declare dso_local i64 @IFNET_IS_CELLULAR(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIFI(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_WIRED(%struct.ifnet*) #1

declare dso_local i64 @IFNET_IS_EXPENSIVE(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
