; ModuleID = '/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_igd_desc_parse.c_IGDendelt.c'
source_filename = "/home/carl/AnghaBench/RetroArch/deps/miniupnpc/extr_igd_desc_parse.c_IGDendelt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IGDdatas = type { %struct.TYPE_4__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i8* }

@.str = private unnamed_addr constant [8 x i8] c"service\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"urn:schemas-upnp-org:service:WANCommonInterfaceConfig:\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"urn:schemas-upnp-org:service:WANIPv6FirewallControl:\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"urn:schemas-upnp-org:service:WANIPConnection:\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"urn:schemas-upnp-org:service:WANPPPConnection:\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IGDendelt(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.IGDdatas*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.IGDdatas*
  store %struct.IGDdatas* %9, %struct.IGDdatas** %7, align 8
  %10 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %11 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp eq i32 %14, 7
  br i1 %15, label %16, label %86

16:                                               ; preds = %3
  %17 = load i8*, i8** %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @memcmp(i8* %17, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %86, label %21

21:                                               ; preds = %16
  %22 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %23 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @COMPARE(i32 %25, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %21
  %29 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %30 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %29, i32 0, i32 4
  %31 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %32 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %31, i32 0, i32 0
  %33 = call i32 @memcpy(%struct.TYPE_3__* %30, %struct.TYPE_4__* %32, i32 4)
  br label %85

34:                                               ; preds = %21
  %35 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %36 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @COMPARE(i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %43 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %42, i32 0, i32 3
  %44 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %45 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %44, i32 0, i32 0
  %46 = call i32 @memcpy(%struct.TYPE_3__* %43, %struct.TYPE_4__* %45, i32 4)
  br label %84

47:                                               ; preds = %34
  %48 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %49 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i64 @COMPARE(i32 %51, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.3, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %61, label %54

54:                                               ; preds = %47
  %55 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %56 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @COMPARE(i32 %58, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %54, %47
  %62 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %63 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 0
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %61
  %71 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %72 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %71, i32 0, i32 2
  %73 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %74 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %73, i32 0, i32 0
  %75 = call i32 @memcpy(%struct.TYPE_3__* %72, %struct.TYPE_4__* %74, i32 4)
  br label %82

76:                                               ; preds = %61
  %77 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %78 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %77, i32 0, i32 1
  %79 = load %struct.IGDdatas*, %struct.IGDdatas** %7, align 8
  %80 = getelementptr inbounds %struct.IGDdatas, %struct.IGDdatas* %79, i32 0, i32 0
  %81 = call i32 @memcpy(%struct.TYPE_3__* %78, %struct.TYPE_4__* %80, i32 4)
  br label %82

82:                                               ; preds = %76, %70
  br label %83

83:                                               ; preds = %82, %54
  br label %84

84:                                               ; preds = %83, %41
  br label %85

85:                                               ; preds = %84, %28
  br label %86

86:                                               ; preds = %85, %16, %3
  ret void
}

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i64 @COMPARE(i32, i8*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
