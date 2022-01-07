; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llreach_alloc.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arp_llreach_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtentry = type { i64, i32 (%struct.rtentry*)*, %struct.llinfo_arp*, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.llinfo_arp = type { %struct.if_llreach* }
%struct.if_llreach = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ifnet = type { i32 }
%struct.TYPE_8__ = type { i32 }

@arp_llreach_base = common dso_local global i64 0, align 8
@IFF_LOOPBACK = common dso_local global i32 0, align 4
@IF_LLREACH_MAXLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ARP reply\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"ARP announcement\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c" for different target HW address; using new llreach record\00", align 1
@ROUTE_LLENTRY_CHANGED = common dso_local global i32 0, align 4
@ROUTE_LLENTRY_RESOLVED = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [61 x i8] c" for same target HW address; keeping existing llreach record\00", align 1
@ETHERTYPE_IP = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"creating new llreach record\00", align 1
@arp_verbose = common dso_local global i32 0, align 4
@MAX_IPv4_STR_LEN = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"%s: %s%s for %s\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtentry*, %struct.ifnet*, i8*, i32, i64, i32*)* @arp_llreach_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arp_llreach_alloc(%struct.rtentry* %0, %struct.ifnet* %1, i8* %2, i32 %3, i64 %4, i32* %5) #0 {
  %7 = alloca %struct.rtentry*, align 8
  %8 = alloca %struct.ifnet*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.llinfo_arp*, align 8
  %14 = alloca %struct.if_llreach*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  store %struct.rtentry* %0, %struct.rtentry** %7, align 8
  store %struct.ifnet* %1, %struct.ifnet** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  store i32* %5, i32** %12, align 8
  %19 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %20 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %6
  %24 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %25 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %23, %6
  %30 = phi i1 [ true, %6 ], [ %28, %23 ]
  %31 = zext i1 %30 to i32
  %32 = call i32 @VERIFY(i32 %31)
  %33 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %34 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %39 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br label %43

43:                                               ; preds = %37, %29
  %44 = phi i1 [ true, %29 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  %46 = call i32 @VERIFY(i32 %45)
  %47 = load i64, i64* @arp_llreach_base, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %187

49:                                               ; preds = %43
  %50 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %51 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %187

54:                                               ; preds = %49
  %55 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %56 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %55, i32 0, i32 3
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @IFF_LOOPBACK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %187, label %63

63:                                               ; preds = %54
  %64 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %65 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IF_LLREACH_MAXLEN, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %187

69:                                               ; preds = %63
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %72 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %70, %73
  br i1 %74, label %75, label %187

75:                                               ; preds = %69
  %76 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %77 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %76, i32 0, i32 2
  %78 = load %struct.llinfo_arp*, %struct.llinfo_arp** %77, align 8
  store %struct.llinfo_arp* %78, %struct.llinfo_arp** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %79 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %80 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %79)
  %81 = load %struct.llinfo_arp*, %struct.llinfo_arp** %13, align 8
  %82 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %81, i32 0, i32 0
  %83 = load %struct.if_llreach*, %struct.if_llreach** %82, align 8
  store %struct.if_llreach* %83, %struct.if_llreach** %14, align 8
  %84 = icmp ne %struct.if_llreach* %83, null
  br i1 %84, label %85, label %134

85:                                               ; preds = %75
  %86 = load i64, i64* %11, align 8
  %87 = icmp ne i64 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0)
  store i8* %89, i8** %16, align 8
  %90 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %91 = call i32 @IFLR_LOCK(%struct.if_llreach* %90)
  %92 = load i8*, i8** %9, align 8
  %93 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %94 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = call i64 @bcmp(i8* %92, i32 %96, i32 %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %116

100:                                              ; preds = %85
  %101 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %102 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %101)
  %103 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %104 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %103, i32 0, i32 1
  %105 = load i32 (%struct.rtentry*)*, i32 (%struct.rtentry*)** %104, align 8
  %106 = icmp ne i32 (%struct.rtentry*)* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @VERIFY(i32 %107)
  %109 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %110 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %109, i32 0, i32 1
  %111 = load i32 (%struct.rtentry*)*, i32 (%struct.rtentry*)** %110, align 8
  %112 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %113 = call i32 %111(%struct.rtentry* %112)
  store %struct.if_llreach* null, %struct.if_llreach** %14, align 8
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i8** %15, align 8
  %114 = load i32, i32* @ROUTE_LLENTRY_CHANGED, align 4
  %115 = load i32*, i32** %12, align 8
  store i32 %114, i32* %115, align 4
  br label %133

116:                                              ; preds = %85
  %117 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %118 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @ROUTE_LLENTRY_RESOLVED, align 4
  %123 = load i32*, i32** %12, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %116
  %125 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %126 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %125, i32 0, i32 0
  store i64 0, i64* %126, align 8
  %127 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %128 = call i32 @IFLR_UNLOCK(%struct.if_llreach* %127)
  %129 = load i64, i64* %11, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %132

131:                                              ; preds = %124
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.4, i64 0, i64 0), i8** %15, align 8
  br label %132

132:                                              ; preds = %131, %124
  br label %133

133:                                              ; preds = %132, %100
  br label %134

134:                                              ; preds = %133, %75
  %135 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %136 = icmp eq %struct.if_llreach* %135, null
  br i1 %136, label %137, label %158

137:                                              ; preds = %134
  %138 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %139 = load i32, i32* @ETHERTYPE_IP, align 4
  %140 = load i8*, i8** %9, align 8
  %141 = load i32, i32* %10, align 4
  %142 = load i64, i64* @arp_llreach_base, align 8
  %143 = call %struct.if_llreach* @ifnet_llreach_alloc(%struct.ifnet* %138, i32 %139, i8* %140, i32 %141, i64 %142)
  %144 = load %struct.llinfo_arp*, %struct.llinfo_arp** %13, align 8
  %145 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %144, i32 0, i32 0
  store %struct.if_llreach* %143, %struct.if_llreach** %145, align 8
  store %struct.if_llreach* %143, %struct.if_llreach** %14, align 8
  %146 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %147 = icmp ne %struct.if_llreach* %146, null
  br i1 %147, label %148, label %155

148:                                              ; preds = %137
  %149 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %150 = getelementptr inbounds %struct.if_llreach, %struct.if_llreach* %149, i32 0, i32 0
  store i64 0, i64* %150, align 8
  %151 = load i8*, i8** %15, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %154

153:                                              ; preds = %148
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i8** %15, align 8
  br label %154

154:                                              ; preds = %153, %148
  br label %155

155:                                              ; preds = %154, %137
  %156 = load i32, i32* @ROUTE_LLENTRY_RESOLVED, align 4
  %157 = load i32*, i32** %12, align 8
  store i32 %156, i32* %157, align 4
  br label %158

158:                                              ; preds = %155, %134
  %159 = load i32, i32* @arp_verbose, align 4
  %160 = icmp sgt i32 %159, 1
  br i1 %160, label %161, label %186

161:                                              ; preds = %158
  %162 = load %struct.if_llreach*, %struct.if_llreach** %14, align 8
  %163 = icmp ne %struct.if_llreach* %162, null
  br i1 %163, label %164, label %186

164:                                              ; preds = %161
  %165 = load i8*, i8** %15, align 8
  %166 = icmp ne i8* %165, null
  br i1 %166, label %167, label %186

167:                                              ; preds = %164
  %168 = load i32, i32* @MAX_IPv4_STR_LEN, align 4
  %169 = zext i32 %168 to i64
  %170 = call i8* @llvm.stacksave()
  store i8* %170, i8** %17, align 8
  %171 = alloca i8, i64 %169, align 16
  store i64 %169, i64* %18, align 8
  %172 = load i32, i32* @LOG_DEBUG, align 4
  %173 = load %struct.ifnet*, %struct.ifnet** %8, align 8
  %174 = call i32 @if_name(%struct.ifnet* %173)
  %175 = load i8*, i8** %16, align 8
  %176 = load i8*, i8** %15, align 8
  %177 = load i32, i32* @AF_INET, align 4
  %178 = load %struct.rtentry*, %struct.rtentry** %7, align 8
  %179 = call i32 @rt_key(%struct.rtentry* %178)
  %180 = call %struct.TYPE_8__* @SIN(i32 %179)
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 0
  %182 = trunc i64 %169 to i32
  %183 = call i32 @inet_ntop(i32 %177, i32* %181, i8* %171, i32 %182)
  %184 = call i32 @log(i32 %172, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %174, i8* %175, i8* %176, i32 %183)
  %185 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %185)
  br label %186

186:                                              ; preds = %167, %164, %161, %158
  br label %187

187:                                              ; preds = %186, %69, %63, %54, %49, %43
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @IFLR_LOCK(%struct.if_llreach*) #1

declare dso_local i64 @bcmp(i8*, i32, i32) #1

declare dso_local i32 @IFLR_UNLOCK(%struct.if_llreach*) #1

declare dso_local %struct.if_llreach* @ifnet_llreach_alloc(%struct.ifnet*, i32, i8*, i32, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @log(i32, i8*, i32, i8*, i8*, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @inet_ntop(i32, i32*, i8*, i32) #1

declare dso_local %struct.TYPE_8__* @SIN(i32) #1

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
