; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arptfree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet/extr_in_arp.c_arptfree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.llinfo_arp = type { i32, i64, i64, i32, i64, %struct.rtentry* }
%struct.rtentry = type { i64, i32, i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.arptf_arg = type { i32, i64, i32, i32, i32, i32, i32, i32 }
%struct.sockaddr_dl = type { i64 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@LLINFO_PROBING = common dso_local global i32 0, align 4
@ROUTE_LLENTRY_UNREACH = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@RTF_STATIC = common dso_local global i32 0, align 4
@RTF_REJECT = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@arpstat = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.llinfo_arp*, i8*)* @arptfree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arptfree(%struct.llinfo_arp* %0, i8* %1) #0 {
  %3 = alloca %struct.llinfo_arp*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.arptf_arg*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sockaddr_dl*, align 8
  %9 = alloca %struct.sockaddr_dl*, align 8
  store %struct.llinfo_arp* %0, %struct.llinfo_arp** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.arptf_arg*
  store %struct.arptf_arg* %11, %struct.arptf_arg** %5, align 8
  %12 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %13 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %12, i32 0, i32 5
  %14 = load %struct.rtentry*, %struct.rtentry** %13, align 8
  store %struct.rtentry* %14, %struct.rtentry** %6, align 8
  %15 = load i32, i32* @rnh_lock, align 4
  %16 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %17 = call i32 @LCK_MTX_ASSERT(i32 %15, i32 %16)
  %18 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %19 = call i32 @RT_LOCK(%struct.rtentry* %18)
  %20 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %21 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %2
  %25 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %26 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br label %30

30:                                               ; preds = %24, %2
  %31 = phi i1 [ true, %2 ], [ %29, %24 ]
  %32 = zext i1 %31 to i32
  %33 = call i32 @VERIFY(i32 %32)
  %34 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %35 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %30
  %39 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %40 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %39, i32 0, i32 4
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %38, %30
  %45 = phi i1 [ true, %30 ], [ %43, %38 ]
  %46 = zext i1 %45 to i32
  %47 = call i32 @VERIFY(i32 %46)
  %48 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %49 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  %52 = call i64 (...) @net_uptime()
  store i64 %52, i64* %7, align 8
  %53 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %54 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %44
  %58 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %59 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @LLINFO_PROBING, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %87

64:                                               ; preds = %57
  %65 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %66 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp sle i64 %67, %68
  br i1 %69, label %70, label %87

70:                                               ; preds = %64
  %71 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %72 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.sockaddr_dl* @SDL(i32 %73)
  store %struct.sockaddr_dl* %74, %struct.sockaddr_dl** %8, align 8
  %75 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %76 = icmp ne %struct.sockaddr_dl* %75, null
  br i1 %76, label %77, label %80

77:                                               ; preds = %70
  %78 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %8, align 8
  %79 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %78, i32 0, i32 0
  store i64 0, i64* %79, align 8
  br label %80

80:                                               ; preds = %77, %70
  %81 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %82 = call i32 @arp_llinfo_flushq(%struct.llinfo_arp* %81)
  %83 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %84 = load i32, i32* @ROUTE_LLENTRY_UNREACH, align 4
  %85 = load i32, i32* @TRUE, align 4
  %86 = call i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry* %83, i32* null, i32 %84, i32* null, i32 %85)
  br label %87

87:                                               ; preds = %80, %64, %57, %44
  %88 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %89 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %88, i32 0, i32 3
  %90 = call i64 @qlen(i32* %89)
  %91 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %92 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %90
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 8
  %97 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %98 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %97, i32 0, i32 4
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %101 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %100, i32 0, i32 6
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %99
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %101, align 8
  %106 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %107 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %106, i32 0, i32 3
  %108 = call i64 @qsize(i32* %107)
  %109 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %110 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %108
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %116 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %87
  %120 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %121 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @RTF_STATIC, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %139

126:                                              ; preds = %119, %87
  %127 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %128 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %128, align 8
  %131 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %132 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %126
  %136 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %137 = call i32 @RT_UNLOCK(%struct.rtentry* %136)
  br label %225

138:                                              ; preds = %126
  br label %139

139:                                              ; preds = %138, %119
  %140 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %141 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %139
  %145 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %146 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* %7, align 8
  %149 = icmp sgt i64 %147, %148
  br i1 %149, label %150, label %157

150:                                              ; preds = %144
  %151 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %152 = call i32 @RT_UNLOCK(%struct.rtentry* %151)
  %153 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %154 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  br label %225

157:                                              ; preds = %144, %139
  %158 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %159 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp sgt i64 %160, 0
  br i1 %161, label %162, label %194

162:                                              ; preds = %157
  %163 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %164 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %191, label %167

167:                                              ; preds = %162
  %168 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %169 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %168, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %191, label %172

172:                                              ; preds = %167
  %173 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %174 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = call %struct.sockaddr_dl* @SDL(i32 %175)
  store %struct.sockaddr_dl* %176, %struct.sockaddr_dl** %9, align 8
  %177 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %178 = icmp ne %struct.sockaddr_dl* %177, null
  br i1 %178, label %179, label %182

179:                                              ; preds = %172
  %180 = load %struct.sockaddr_dl*, %struct.sockaddr_dl** %9, align 8
  %181 = getelementptr inbounds %struct.sockaddr_dl, %struct.sockaddr_dl* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  br label %182

182:                                              ; preds = %179, %172
  %183 = load %struct.llinfo_arp*, %struct.llinfo_arp** %3, align 8
  %184 = getelementptr inbounds %struct.llinfo_arp, %struct.llinfo_arp* %183, i32 0, i32 2
  store i64 0, i64* %184, align 8
  %185 = load i32, i32* @RTF_REJECT, align 4
  %186 = xor i32 %185, -1
  %187 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %188 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 8
  %190 = and i32 %189, %186
  store i32 %190, i32* %188, align 8
  br label %191

191:                                              ; preds = %182, %167, %162
  %192 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %193 = call i32 @RT_UNLOCK(%struct.rtentry* %192)
  br label %225

194:                                              ; preds = %157
  %195 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %196 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load i32, i32* @RTF_STATIC, align 4
  %199 = and i32 %197, %198
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %221, label %201

201:                                              ; preds = %194
  %202 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %203 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %221, label %206

206:                                              ; preds = %201
  %207 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %208 = call i32 @RT_UNLOCK(%struct.rtentry* %207)
  %209 = load i32, i32* @RTM_DELETE, align 4
  %210 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %211 = call i32 @rt_key(%struct.rtentry* %210)
  %212 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %213 = call i32 @rt_mask(%struct.rtentry* %212)
  %214 = call i32 @rtrequest_locked(i32 %209, i32 %211, i32* null, i32 %213, i32 0, i32* null)
  %215 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arpstat, i32 0, i32 0), align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @arpstat, i32 0, i32 0), align 4
  %217 = load %struct.arptf_arg*, %struct.arptf_arg** %5, align 8
  %218 = getelementptr inbounds %struct.arptf_arg, %struct.arptf_arg* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 8
  br label %224

221:                                              ; preds = %201, %194
  %222 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %223 = call i32 @RT_UNLOCK(%struct.rtentry* %222)
  br label %224

224:                                              ; preds = %221, %206
  br label %225

225:                                              ; preds = %135, %150, %224, %191
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @net_uptime(...) #1

declare dso_local %struct.sockaddr_dl* @SDL(i32) #1

declare dso_local i32 @arp_llinfo_flushq(%struct.llinfo_arp*) #1

declare dso_local i32 @route_event_enqueue_nwk_wq_entry(%struct.rtentry*, i32*, i32, i32*, i32) #1

declare dso_local i64 @qlen(i32*) #1

declare dso_local i64 @qsize(i32*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @rtrequest_locked(i32, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @rt_key(%struct.rtentry*) #1

declare dso_local i32 @rt_mask(%struct.rtentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
