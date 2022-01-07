; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llreach_reachable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llreach_reachable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llinfo_arp = type { i64, i32, %struct.if_llreach* }
%struct.if_llreach = type { i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@arp_llreach_base = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"has alias(es) and hasn't been used in a while\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"haven't heard from it in a while\00", align 1
@arp_verbose = common dso_local global i32 0, align 4
@MAX_IPv4_STR_LEN = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [76 x i8] c"%s: ARP probe(s) needed for %s; %s [lastused %lld, lastrcvd %lld] secs ago\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.llinfo_arp*)* @arp_llreach_reachable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arp_llreach_reachable(%struct.llinfo_arp* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.llinfo_arp*, align 8
  %4 = alloca %struct.if_llreach*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.llinfo_arp* %0, %struct.llinfo_arp** %3, align 8
  store i8* null, i8** %5, align 8
  %9 = load i64, i64* @arp_llreach_base, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %108

12:                                               ; preds = %1
  %13 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %14 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %13, i32 0, i32 2
  %15 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  store %struct.if_llreach* %15, %struct.if_llreach** %4, align 8
  %16 = icmp eq %struct.if_llreach* %15, null
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %108

18:                                               ; preds = %12
  %19 = load %struct.if_llreach*, %struct.if_llreach** %4, align 8
  %20 = call i64 @ifnet_llreach_reachable(%struct.if_llreach* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %51

22:                                               ; preds = %18
  %23 = load %struct.if_llreach*, %struct.if_llreach** %4, align 8
  %24 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  store i32 1, i32* %2, align 4
  br label %108

28:                                               ; preds = %22
  %29 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %30 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %35 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %34, i32 0, i32 2
  %36 = load %struct.if_llreach*, %struct.if_llreach** %35, align 8
  %37 = icmp ne %struct.if_llreach* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @VERIFY(i32 %38)
  %40 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %41 = call i32 @arp_llreach_use(%struct.llinfo_arp* %40)
  br label %42

42:                                               ; preds = %33, %28
  %43 = load %struct.if_llreach*, %struct.if_llreach** %4, align 8
  %44 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %45 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @ifnet_llreach_reachable_delta(%struct.if_llreach* %43, i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %108

50:                                               ; preds = %42
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %52

51:                                               ; preds = %18
  store i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %52

52:                                               ; preds = %51, %50
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* @arp_verbose, align 4
  %55 = icmp sgt i32 %54, 1
  br i1 %55, label %56, label %107

56:                                               ; preds = %53
  %57 = load i32, i32* @MAX_IPv4_STR_LEN, align 4
  %58 = zext i32 %57 to i64
  %59 = call i8* @llvm.stacksave()
  store i8* %59, i8** %6, align 8
  %60 = alloca i8, i64 %58, align 16
  store i64 %58, i64* %7, align 8
  %61 = call i64 (...) @net_uptime()
  store i64 %61, i64* %8, align 8
  %62 = load i32, i32* @LOG_DEBUG, align 4
  %63 = load %struct.if_llreach*, %struct.if_llreach** %4, align 8
  %64 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @if_name(i32 %65)
  %67 = load i32, i32* @AF_INET, align 4
  %68 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %69 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @rt_key(i32 %70)
  %72 = call %struct.TYPE_2__* @SIN(i32 %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = trunc i64 %58 to i32
  %75 = call i32 @inet_ntop(i32 %67, i32* %73, i8* %60, i32 %74)
  %76 = load i8*, i8** %5, align 8
  %77 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %78 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %56
  %82 = load i64, i64* %8, align 8
  %83 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %84 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = sub nsw i64 %82, %85
  %87 = trunc i64 %86 to i32
  br label %89

88:                                               ; preds = %56
  br label %89

89:                                               ; preds = %88, %81
  %90 = phi i32 [ %87, %81 ], [ -1, %88 ]
  %91 = load %struct.if_llreach*, %struct.if_llreach** %4, align 8
  %92 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i64, i64* %8, align 8
  %97 = load %struct.if_llreach*, %struct.if_llreach** %4, align 8
  %98 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = sub nsw i64 %96, %99
  %101 = trunc i64 %100 to i32
  br label %103

102:                                              ; preds = %89
  br label %103

103:                                              ; preds = %102, %95
  %104 = phi i32 [ %101, %95 ], [ -1, %102 ]
  %105 = call i32 @log(i32 %62, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %75, i8* %76, i32 %90, i32 %104)
  %106 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %106)
  br label %107

107:                                              ; preds = %103, %53
  store i32 0, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %49, %27, %17, %11
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @ifnet_llreach_reachable(%struct.if_llreach*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @arp_llreach_use(%struct.llinfo_arp*) #1

declare dso_local i64 @ifnet_llreach_reachable_delta(%struct.if_llreach*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @net_uptime(...) #1

declare dso_local i32 @log(i32, i8*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @if_name(i32) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local %struct.TYPE_2__* @SIN(i32) #1

declare dso_local i32 @rt_key(i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
