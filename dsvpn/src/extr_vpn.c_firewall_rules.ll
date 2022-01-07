; ModuleID = '/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_firewall_rules.c'
source_filename = "/home/carl/AnghaBench/dsvpn/src/extr_vpn.c_firewall_rules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_5__ = type { i8**, i8** }

@.str = private unnamed_addr constant [15 x i8] c"$LOCAL_TUN_IP6\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"$REMOTE_TUN_IP6\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"$LOCAL_TUN_IP\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"$REMOTE_TUN_IP\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"$EXT_IP\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"$EXT_PORT\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"$EXT_IF_NAME\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"$EXT_GW_IP\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"$IF_NAME\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [69 x i8] c"Routing commands for that operating system have not been added yet.\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Unable to run [%s]: [%s]\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32)* @firewall_rules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @firewall_rules(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [10 x [2 x i8*]], align 16
  %9 = alloca i8**, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_5__, align 8
  %12 = alloca %struct.TYPE_5__, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = getelementptr inbounds [10 x [2 x i8*]], [10 x [2 x i8*]]* %8, i64 0, i64 0
  %14 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 0, i64 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds i8*, i8** %14, i64 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 10
  %18 = load i32*, i32** %17, align 8
  %19 = bitcast i32* %18 to i8*
  store i8* %19, i8** %15, align 8
  %20 = getelementptr inbounds [2 x i8*], [2 x i8*]* %13, i64 1
  %21 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 0, i64 0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8** %21, align 8
  %22 = getelementptr inbounds i8*, i8** %21, i64 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 9
  %25 = load i32*, i32** %24, align 8
  %26 = bitcast i32* %25 to i8*
  store i8* %26, i8** %22, align 8
  %27 = getelementptr inbounds [2 x i8*], [2 x i8*]* %20, i64 1
  %28 = getelementptr inbounds [2 x i8*], [2 x i8*]* %27, i64 0, i64 0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 1
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 8
  %32 = load i32*, i32** %31, align 8
  %33 = bitcast i32* %32 to i8*
  store i8* %33, i8** %29, align 8
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %27, i64 1
  %35 = getelementptr inbounds [2 x i8*], [2 x i8*]* %34, i64 0, i64 0
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8** %35, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i64 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 7
  %39 = load i32*, i32** %38, align 8
  %40 = bitcast i32* %39 to i8*
  store i8* %40, i8** %36, align 8
  %41 = getelementptr inbounds [2 x i8*], [2 x i8*]* %34, i64 1
  %42 = getelementptr inbounds [2 x i8*], [2 x i8*]* %41, i64 0, i64 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8** %42, align 8
  %43 = getelementptr inbounds i8*, i8** %42, i64 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  %47 = bitcast i32* %46 to i8*
  store i8* %47, i8** %43, align 8
  %48 = getelementptr inbounds [2 x i8*], [2 x i8*]* %41, i64 1
  %49 = getelementptr inbounds [2 x i8*], [2 x i8*]* %48, i64 0, i64 0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8** %49, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = bitcast i32* %53 to i8*
  store i8* %54, i8** %50, align 8
  %55 = getelementptr inbounds [2 x i8*], [2 x i8*]* %48, i64 1
  %56 = getelementptr inbounds [2 x i8*], [2 x i8*]* %55, i64 0, i64 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8** %56, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = bitcast i32* %60 to i8*
  store i8* %61, i8** %57, align 8
  %62 = getelementptr inbounds [2 x i8*], [2 x i8*]* %55, i64 1
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %62, i64 0, i64 0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0), i8** %63, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to i8*
  store i8* %68, i8** %64, align 8
  %69 = getelementptr inbounds [2 x i8*], [2 x i8*]* %62, i64 1
  %70 = getelementptr inbounds [2 x i8*], [2 x i8*]* %69, i64 0, i64 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8** %70, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i64 1
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = bitcast i32* %74 to i8*
  store i8* %75, i8** %71, align 8
  %76 = getelementptr inbounds [2 x i8*], [2 x i8*]* %69, i64 1
  %77 = getelementptr inbounds [2 x i8*], [2 x i8*]* %76, i64 0, i64 0
  store i8* null, i8** %77, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* null, i8** %78, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %84, label %85

84:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %152

85:                                               ; preds = %3
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %100

88:                                               ; preds = %85
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call { i8**, i8** } @firewall_rules_cmds(i32 %91)
  %93 = bitcast %struct.TYPE_5__* %11 to { i8**, i8** }*
  %94 = getelementptr inbounds { i8**, i8** }, { i8**, i8** }* %93, i32 0, i32 0
  %95 = extractvalue { i8**, i8** } %92, 0
  store i8** %95, i8*** %94, align 8
  %96 = getelementptr inbounds { i8**, i8** }, { i8**, i8** }* %93, i32 0, i32 1
  %97 = extractvalue { i8**, i8** } %92, 1
  store i8** %97, i8*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %99 = load i8**, i8*** %98, align 8
  br label %112

100:                                              ; preds = %85
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call { i8**, i8** } @firewall_rules_cmds(i32 %103)
  %105 = bitcast %struct.TYPE_5__* %12 to { i8**, i8** }*
  %106 = getelementptr inbounds { i8**, i8** }, { i8**, i8** }* %105, i32 0, i32 0
  %107 = extractvalue { i8**, i8** } %104, 0
  store i8** %107, i8*** %106, align 8
  %108 = getelementptr inbounds { i8**, i8** }, { i8**, i8** }* %105, i32 0, i32 1
  %109 = extractvalue { i8**, i8** } %104, 1
  store i8** %109, i8*** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %111 = load i8**, i8*** %110, align 8
  br label %112

112:                                              ; preds = %100, %88
  %113 = phi i8** [ %99, %88 ], [ %111, %100 ]
  store i8** %113, i8*** %9, align 8
  %114 = icmp eq i8** %113, null
  br i1 %114, label %115, label %118

115:                                              ; preds = %112
  %116 = load i32, i32* @stderr, align 4
  %117 = call i32 (i32, i8*, ...) @fprintf(i32 %116, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.9, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %152

118:                                              ; preds = %112
  store i64 0, i64* %10, align 8
  br label %119

119:                                              ; preds = %145, %118
  %120 = load i8**, i8*** %9, align 8
  %121 = load i64, i64* %10, align 8
  %122 = getelementptr inbounds i8*, i8** %120, i64 %121
  %123 = load i8*, i8** %122, align 8
  %124 = icmp ne i8* %123, null
  br i1 %124, label %125, label %148

125:                                              ; preds = %119
  %126 = getelementptr inbounds [10 x [2 x i8*]], [10 x [2 x i8*]]* %8, i64 0, i64 0
  %127 = bitcast [2 x i8*]* %126 to i8***
  %128 = load i8**, i8*** %9, align 8
  %129 = load i64, i64* %10, align 8
  %130 = getelementptr inbounds i8*, i8** %128, i64 %129
  %131 = load i8*, i8** %130, align 8
  %132 = load i32, i32* %7, align 4
  %133 = call i64 @shell_cmd(i8*** %127, i8* %131, i32 %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %125
  %136 = load i32, i32* @stderr, align 4
  %137 = load i8**, i8*** %9, align 8
  %138 = load i64, i64* %10, align 8
  %139 = getelementptr inbounds i8*, i8** %137, i64 %138
  %140 = load i8*, i8** %139, align 8
  %141 = load i32, i32* @errno, align 4
  %142 = call i8* @strerror(i32 %141)
  %143 = call i32 (i32, i8*, ...) @fprintf(i32 %136, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* %140, i8* %142)
  store i32 -1, i32* %4, align 4
  br label %152

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144
  %146 = load i64, i64* %10, align 8
  %147 = add i64 %146, 1
  store i64 %147, i64* %10, align 8
  br label %119

148:                                              ; preds = %119
  %149 = load i32, i32* %6, align 4
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  store i32 0, i32* %4, align 4
  br label %152

152:                                              ; preds = %148, %135, %115, %84
  %153 = load i32, i32* %4, align 4
  ret i32 %153
}

declare dso_local { i8**, i8** } @firewall_rules_cmds(i32) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i64 @shell_cmd(i8***, i8*, i32) #1

declare dso_local i8* @strerror(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
