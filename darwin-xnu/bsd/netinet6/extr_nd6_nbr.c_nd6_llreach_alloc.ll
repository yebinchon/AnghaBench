; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_llreach_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_nbr.c_nd6_llreach_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i32 (%struct.rtentry*)*, %struct.TYPE_4__*, %struct.llinfo_nd6* }
%struct.TYPE_4__ = type { i32 }
%struct.llinfo_nd6 = type { i64, %struct.if_llreach* }
%struct.if_llreach = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ifnet = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@nd6_llreach_base = common dso_local global i64 0, align 8
@IFEF_IPV6_ND6ALT = common dso_local global i32 0, align 4
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IF_LLREACH_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"ND6 advertisement\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ND6 unsolicited announcement\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c" for different target HW address; using new llreach record\00", align 1
@.str.4 = private unnamed_addr constant [61 x i8] c" for same target HW address; keeping existing llreach record\00", align 1
@ETHERTYPE_IPV6 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"creating new llreach record\00", align 1
@nd6_debug = common dso_local global i64 0, align 8
@MAX_IPv6_STR_LEN = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"%s: %s%s for %s\0A\00", align 1
@AF_INET6 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nd6_llreach_alloc(%struct.rtentry* %0, %struct.ifnet* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.llinfo_nd6*, align 8
  %12 = alloca %struct.if_llreach*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.rtentry* %0, %struct.rtentry** %6, align 8
  store %struct.ifnet* %1, %struct.ifnet** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %18 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %17, i32 0, i32 2
  %19 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %18, align 8
  store %struct.llinfo_nd6* %19, %struct.llinfo_nd6** %11, align 8
  %20 = load i64, i64* @nd6_llreach_base, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %152

22:                                               ; preds = %5
  %23 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %11, align 8
  %24 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %29 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFEF_IPV6_ND6ALT, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %152

34:                                               ; preds = %27, %22
  %35 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %36 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @IFF_LOOPBACK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %152, label %43

43:                                               ; preds = %34
  %44 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %45 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %152

49:                                               ; preds = %43
  %50 = load i32, i32* %9, align 4
  %51 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %52 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp eq i32 %50, %53
  br i1 %54, label %55, label %152

55:                                               ; preds = %49
  store i8* null, i8** %13, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  %56 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %57 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %56)
  %58 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %11, align 8
  %59 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %58, i32 0, i32 1
  %60 = load %struct.if_llreach*, %struct.if_llreach** %59, align 8
  store %struct.if_llreach* %60, %struct.if_llreach** %12, align 8
  %61 = icmp ne %struct.if_llreach* %60, null
  br i1 %61, label %62, label %101

62:                                               ; preds = %55
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0)
  store i8* %66, i8** %14, align 8
  %67 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %68 = call i32 @IFLR_LOCK(%struct.if_llreach* %67)
  %69 = load i8*, i8** %8, align 8
  %70 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %71 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @bcmp(i8* %69, i32 %73, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %91

77:                                               ; preds = %62
  %78 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %79 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %78)
  %80 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %81 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %80, i32 0, i32 0
  %82 = load i32 (%struct.rtentry*)*, i32 (%struct.rtentry*)** %81, align 8
  %83 = icmp ne i32 (%struct.rtentry*)* %82, null
  %84 = zext i1 %83 to i32
  %85 = call i32 @VERIFY(i32 %84)
  %86 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %87 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %86, i32 0, i32 0
  %88 = load i32 (%struct.rtentry*)*, i32 (%struct.rtentry*)** %87, align 8
  %89 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %90 = call i32 %88(%struct.rtentry* %89)
  store %struct.if_llreach* null, %struct.if_llreach** %12, align 8
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8** %13, align 8
  br label %100

91:                                               ; preds = %62
  %92 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %93 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %92, i32 0, i32 0
  store i64 0, i64* %93, align 8
  %94 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %95 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %94)
  %96 = load i64, i64* %10, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %91
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8** %13, align 8
  br label %99

99:                                               ; preds = %98, %91
  br label %100

100:                                              ; preds = %99, %77
  br label %101

101:                                              ; preds = %100, %55
  %102 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %103 = icmp eq %struct.if_llreach* %102, null
  br i1 %103, label %104, label %123

104:                                              ; preds = %101
  %105 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %106 = load i32, i32* @ETHERTYPE_IPV6, align 4
  %107 = load i8*, i8** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = load i64, i64* @nd6_llreach_base, align 8
  %110 = call %struct.if_llreach* @ifnet_llreach_alloc(%struct.ifnet* %105, i32 %106, i8* %107, i32 %108, i64 %109)
  %111 = load %struct.llinfo_nd6*, %struct.llinfo_nd6** %11, align 8
  %112 = getelementptr inbounds %struct.llinfo_nd6, %struct.llinfo_nd6* %111, i32 0, i32 1
  store %struct.if_llreach* %110, %struct.if_llreach** %112, align 8
  store %struct.if_llreach* %110, %struct.if_llreach** %12, align 8
  %113 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %114 = icmp ne %struct.if_llreach* %113, null
  br i1 %114, label %115, label %122

115:                                              ; preds = %104
  %116 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %117 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %116, i32 0, i32 0
  store i64 0, i64* %117, align 8
  %118 = load i8*, i8** %13, align 8
  %119 = icmp eq i8* %118, null
  br i1 %119, label %120, label %121

120:                                              ; preds = %115
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %13, align 8
  br label %121

121:                                              ; preds = %120, %115
  br label %122

122:                                              ; preds = %121, %104
  br label %123

123:                                              ; preds = %122, %101
  %124 = load i64, i64* @nd6_debug, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  %127 = load %struct.if_llreach*, %struct.if_llreach** %12, align 8
  %128 = icmp ne %struct.if_llreach* %127, null
  br i1 %128, label %129, label %151

129:                                              ; preds = %126
  %130 = load i8*, i8** %13, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %132, label %151

132:                                              ; preds = %129
  %133 = load i32, i32* @MAX_IPv6_STR_LEN, align 4
  %134 = zext i32 %133 to i64
  %135 = call i8* @llvm.stacksave()
  store i8* %135, i8** %15, align 8
  %136 = alloca i8, i64 %134, align 16
  store i64 %134, i64* %16, align 8
  %137 = load i32, i32* @LOG_DEBUG, align 4
  %138 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %139 = call i32 @if_name(%struct.ifnet* %138)
  %140 = load i8*, i8** %14, align 8
  %141 = load i8*, i8** %13, align 8
  %142 = load i32, i32* @AF_INET6, align 4
  %143 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %144 = call i32 @rt_key(%struct.rtentry* %143)
  %145 = call %struct.TYPE_6__* @SIN6(i32 %144)
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = trunc i64 %134 to i32
  %148 = call i32 @inet_ntop(i32 %142, i32* %146, i8* %136, i32 %147)
  %149 = call i32 @nd6log(i32 %148)
  %150 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %150)
  br label %151

151:                                              ; preds = %132, %129, %126, %123
  br label %152

152:                                              ; preds = %151, %49, %43, %34, %27, %5
  ret void
}

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @IFLR_LOCK(%struct.if_llreach*) #1

declare dso_local i64 @bcmp(i8*, i32, i32) #1

declare dso_local i32 @IFLR_UNLOCK(%struct.if_llreach*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local %struct.if_llreach* @ifnet_llreach_alloc(%struct.ifnet*, i32, i8*, i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local %struct.TYPE_6__* @SIN6(i32) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
