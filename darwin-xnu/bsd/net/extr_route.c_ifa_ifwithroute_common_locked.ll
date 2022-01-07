; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_ifa_ifwithroute_common_locked.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_ifa_ifwithroute_common_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifaddr = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sockaddr = type { i64 }
%struct.rtentry = type { %struct.ifaddr* }
%struct.sockaddr_storage = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@RTF_GATEWAY = common dso_local global i32 0, align 4
@RTF_HOST = common dso_local global i32 0, align 4
@RTF_IFSCOPE = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ifaddr* (i32, %struct.sockaddr*, %struct.sockaddr*, i32)* @ifa_ifwithroute_common_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ifaddr* @ifa_ifwithroute_common_locked(i32 %0, %struct.sockaddr* %1, %struct.sockaddr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.sockaddr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ifaddr*, align 8
  %10 = alloca %struct.rtentry*, align 8
  %11 = alloca %struct.sockaddr_storage, align 4
  %12 = alloca %struct.sockaddr_storage, align 4
  %13 = alloca %struct.ifaddr*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.sockaddr* %1, %struct.sockaddr** %6, align 8
  store %struct.sockaddr* %2, %struct.sockaddr** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.ifaddr* null, %struct.ifaddr** %9, align 8
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  %14 = load i32, i32* @rnh_lock, align 4
  %15 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %16 = call i32 @LCK_MTX_ASSERT(i32 %14, i32 %15)
  %17 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %18 = icmp ne %struct.sockaddr* %17, null
  br i1 %18, label %19, label %30

19:                                               ; preds = %4
  %20 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %21 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @AF_INET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %27 = ptrtoint %struct.sockaddr* %26 to i64
  %28 = call i32 @SA(i64 %27)
  %29 = call %struct.sockaddr* @sa_copy(i32 %28, %struct.sockaddr_storage* %11, i32* null)
  store %struct.sockaddr* %29, %struct.sockaddr** %6, align 8
  br label %30

30:                                               ; preds = %25, %19, %4
  %31 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %32 = icmp ne %struct.sockaddr* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %30
  %34 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %35 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @AF_INET, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %41 = ptrtoint %struct.sockaddr* %40 to i64
  %42 = call i32 @SA(i64 %41)
  %43 = call %struct.sockaddr* @sa_copy(i32 %42, %struct.sockaddr_storage* %12, i32* null)
  store %struct.sockaddr* %43, %struct.sockaddr** %7, align 8
  br label %44

44:                                               ; preds = %39, %33, %30
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RTF_GATEWAY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %65, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @RTF_HOST, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %49
  %55 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %56 = call %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr* %55)
  store %struct.ifaddr* %56, %struct.ifaddr** %9, align 8
  br label %57

57:                                               ; preds = %54, %49
  %58 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %59 = icmp eq %struct.ifaddr* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %57
  %61 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %62 = load i32, i32* %8, align 4
  %63 = call %struct.ifaddr* @ifa_ifwithaddr_scoped(%struct.sockaddr* %61, i32 %62)
  store %struct.ifaddr* %63, %struct.ifaddr** %9, align 8
  br label %64

64:                                               ; preds = %60, %57
  br label %68

65:                                               ; preds = %44
  %66 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %67 = call %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr* %66)
  store %struct.ifaddr* %67, %struct.ifaddr** %9, align 8
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %70 = icmp eq %struct.ifaddr* %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call %struct.ifaddr* @ifa_ifwithnet_scoped(%struct.sockaddr* %72, i32 %73)
  store %struct.ifaddr* %74, %struct.ifaddr** %9, align 8
  br label %75

75:                                               ; preds = %71, %68
  %76 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %77 = icmp eq %struct.ifaddr* %76, null
  br i1 %77, label %78, label %105

78:                                               ; preds = %75
  %79 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %80 = ptrtoint %struct.sockaddr* %79 to i64
  %81 = inttoptr i64 %80 to %struct.sockaddr*
  %82 = load i32, i32* %8, align 4
  %83 = call %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr* %81, i32 0, i32 0, i32 %82)
  store %struct.rtentry* %83, %struct.rtentry** %10, align 8
  %84 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %85 = icmp ne %struct.rtentry* %84, null
  br i1 %85, label %86, label %104

86:                                               ; preds = %78
  %87 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %88 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %87)
  %89 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %90 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %89, i32 0, i32 0
  %91 = load %struct.ifaddr*, %struct.ifaddr** %90, align 8
  store %struct.ifaddr* %91, %struct.ifaddr** %9, align 8
  %92 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %93 = icmp ne %struct.ifaddr* %92, null
  br i1 %93, label %94, label %99

94:                                               ; preds = %86
  %95 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %96 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %95)
  %97 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %98 = call i32 @IFA_ADDREF(%struct.ifaddr* %97)
  br label %99

99:                                               ; preds = %94, %86
  %100 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %101 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %100)
  %102 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %103 = call i32 @RT_UNLOCK(%struct.rtentry* %102)
  store %struct.rtentry* null, %struct.rtentry** %10, align 8
  br label %104

104:                                              ; preds = %99, %78
  br label %105

105:                                              ; preds = %104, %75
  %106 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %107 = icmp ne %struct.ifaddr* %106, null
  br i1 %107, label %108, label %131

108:                                              ; preds = %105
  %109 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %110 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %115 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %113, %116
  br i1 %117, label %118, label %131

118:                                              ; preds = %108
  %119 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %120 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %121 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %120, i32 0, i32 1
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = call %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr* %119, %struct.TYPE_3__* %122)
  store %struct.ifaddr* %123, %struct.ifaddr** %13, align 8
  %124 = load %struct.ifaddr*, %struct.ifaddr** %13, align 8
  %125 = icmp ne %struct.ifaddr* %124, null
  br i1 %125, label %126, label %130

126:                                              ; preds = %118
  %127 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %128 = call i32 @IFA_REMREF(%struct.ifaddr* %127)
  %129 = load %struct.ifaddr*, %struct.ifaddr** %13, align 8
  store %struct.ifaddr* %129, %struct.ifaddr** %9, align 8
  br label %130

130:                                              ; preds = %126, %118
  br label %131

131:                                              ; preds = %130, %108, %105
  %132 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %133 = icmp eq %struct.ifaddr* %132, null
  br i1 %133, label %143, label %134

134:                                              ; preds = %131
  %135 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %136 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %135, i32 0, i32 0
  %137 = load %struct.TYPE_4__*, %struct.TYPE_4__** %136, align 8
  %138 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %139 = ptrtoint %struct.sockaddr* %138 to i64
  %140 = inttoptr i64 %139 to %struct.sockaddr*
  %141 = call i32 @equal(%struct.TYPE_4__* %137, %struct.sockaddr* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %174, label %143

143:                                              ; preds = %134, %131
  %144 = load %struct.sockaddr*, %struct.sockaddr** %7, align 8
  %145 = ptrtoint %struct.sockaddr* %144 to i64
  %146 = inttoptr i64 %145 to %struct.sockaddr*
  %147 = load i32, i32* %8, align 4
  %148 = call %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr* %146, i32 0, i32 0, i32 %147)
  store %struct.rtentry* %148, %struct.rtentry** %10, align 8
  %149 = icmp ne %struct.rtentry* %148, null
  br i1 %149, label %150, label %174

150:                                              ; preds = %143
  %151 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %152 = icmp ne %struct.ifaddr* %151, null
  br i1 %152, label %153, label %156

153:                                              ; preds = %150
  %154 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %155 = call i32 @IFA_REMREF(%struct.ifaddr* %154)
  br label %156

156:                                              ; preds = %153, %150
  %157 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %158 = call i32 @RT_LOCK_SPIN(%struct.rtentry* %157)
  %159 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %160 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %159, i32 0, i32 0
  %161 = load %struct.ifaddr*, %struct.ifaddr** %160, align 8
  store %struct.ifaddr* %161, %struct.ifaddr** %9, align 8
  %162 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %163 = icmp ne %struct.ifaddr* %162, null
  br i1 %163, label %164, label %169

164:                                              ; preds = %156
  %165 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %166 = call i32 @RT_CONVERT_LOCK(%struct.rtentry* %165)
  %167 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %168 = call i32 @IFA_ADDREF(%struct.ifaddr* %167)
  br label %169

169:                                              ; preds = %164, %156
  %170 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %171 = call i32 @RT_REMREF_LOCKED(%struct.rtentry* %170)
  %172 = load %struct.rtentry*, %struct.rtentry** %10, align 8
  %173 = call i32 @RT_UNLOCK(%struct.rtentry* %172)
  br label %174

174:                                              ; preds = %169, %143, %134
  %175 = load i32, i32* %5, align 4
  %176 = load i32, i32* @RTF_IFSCOPE, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %174
  %180 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %181 = icmp ne %struct.ifaddr* %180, null
  br i1 %181, label %182, label %193

182:                                              ; preds = %179
  %183 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %184 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %183, i32 0, i32 1
  %185 = load %struct.TYPE_3__*, %struct.TYPE_3__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %8, align 4
  %189 = icmp ne i32 %187, %188
  br i1 %189, label %190, label %193

190:                                              ; preds = %182
  %191 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %192 = call i32 @IFA_REMREF(%struct.ifaddr* %191)
  store %struct.ifaddr* null, %struct.ifaddr** %9, align 8
  br label %193

193:                                              ; preds = %190, %182, %179, %174
  %194 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %195 = icmp ne %struct.ifaddr* %194, null
  br i1 %195, label %196, label %209

196:                                              ; preds = %193
  %197 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %198 = getelementptr inbounds %struct.ifaddr, %struct.ifaddr* %197, i32 0, i32 0
  %199 = load %struct.TYPE_4__*, %struct.TYPE_4__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %203 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %201, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %196
  %207 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  %208 = call i32 @IFA_REMREF(%struct.ifaddr* %207)
  store %struct.ifaddr* null, %struct.ifaddr** %9, align 8
  br label %209

209:                                              ; preds = %206, %196, %193
  %210 = load %struct.ifaddr*, %struct.ifaddr** %9, align 8
  ret %struct.ifaddr* %210
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.sockaddr* @sa_copy(i32, %struct.sockaddr_storage*, i32*) #1

declare dso_local i32 @SA(i64) #1

declare dso_local %struct.ifaddr* @ifa_ifwithdstaddr(%struct.sockaddr*) #1

declare dso_local %struct.ifaddr* @ifa_ifwithaddr_scoped(%struct.sockaddr*, i32) #1

declare dso_local %struct.ifaddr* @ifa_ifwithnet_scoped(%struct.sockaddr*, i32) #1

declare dso_local %struct.rtentry* @rtalloc1_scoped_locked(%struct.sockaddr*, i32, i32, i32) #1

declare dso_local i32 @RT_LOCK_SPIN(%struct.rtentry*) #1

declare dso_local i32 @RT_CONVERT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @IFA_ADDREF(%struct.ifaddr*) #1

declare dso_local i32 @RT_REMREF_LOCKED(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local %struct.ifaddr* @ifaof_ifpforaddr(%struct.sockaddr*, %struct.TYPE_3__*) #1

declare dso_local i32 @IFA_REMREF(%struct.ifaddr*) #1

declare dso_local i32 @equal(%struct.TYPE_4__*, %struct.sockaddr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
