; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_pool_get.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%union.sockaddr_union = type { i32 }
%struct.pfr_ktable = type { i32, i32, i32, i32, i32, %struct.pfr_ktable* }
%struct.pf_addr = type { i32 }
%struct.pfr_kentry = type { i32, %union.sockaddr_union }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i64 0, align 8
@pfr_sin = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@AF_INET6 = common dso_local global i64 0, align 8
@pfr_sin6 = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@PFR_TFLAG_ACTIVE = common dso_local global i32 0, align 4
@pfr_mask = common dso_local global %union.sockaddr_union zeroinitializer, align 4
@pfr_ffaddr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pfr_pool_get(%struct.pfr_ktable* %0, i32* %1, %struct.pf_addr* %2, %struct.pf_addr** %3, %struct.pf_addr** %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.pfr_ktable*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.pf_addr*, align 8
  %11 = alloca %struct.pf_addr**, align 8
  %12 = alloca %struct.pf_addr**, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.pfr_kentry*, align 8
  %15 = alloca %struct.pfr_kentry*, align 8
  %16 = alloca %struct.pf_addr*, align 8
  %17 = alloca %union.sockaddr_union, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pfr_ktable* %0, %struct.pfr_ktable** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.pf_addr* %2, %struct.pf_addr** %10, align 8
  store %struct.pf_addr** %3, %struct.pf_addr*** %11, align 8
  store %struct.pf_addr** %4, %struct.pf_addr*** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 -1, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* @pf_lock, align 4
  %21 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %22 = call i32 @LCK_MTX_ASSERT(i32 %20, i32 %21)
  %23 = load i64, i64* %13, align 8
  %24 = load i64, i64* @AF_INET, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %6
  store %struct.pf_addr* bitcast (i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @pfr_sin, i32 0, i32 1) to %struct.pf_addr*), %struct.pf_addr** %16, align 8
  br label %34

27:                                               ; preds = %6
  %28 = load i64, i64* %13, align 8
  %29 = load i64, i64* @AF_INET6, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store %struct.pf_addr* bitcast (%struct.TYPE_4__* @pfr_sin6 to %struct.pf_addr*), %struct.pf_addr** %16, align 8
  br label %33

32:                                               ; preds = %27
  store i32 -1, i32* %7, align 4
  br label %207

33:                                               ; preds = %31
  br label %34

34:                                               ; preds = %33, %26
  %35 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %36 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %34
  %42 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %43 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %42, i32 0, i32 5
  %44 = load %struct.pfr_ktable*, %struct.pfr_ktable** %43, align 8
  %45 = icmp ne %struct.pfr_ktable* %44, null
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %48 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %47, i32 0, i32 5
  %49 = load %struct.pfr_ktable*, %struct.pfr_ktable** %48, align 8
  store %struct.pfr_ktable* %49, %struct.pfr_ktable** %8, align 8
  br label %50

50:                                               ; preds = %46, %41, %34
  %51 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %52 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @PFR_TFLAG_ACTIVE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %50
  store i32 -1, i32* %7, align 4
  br label %207

58:                                               ; preds = %50
  %59 = load i32*, i32** %9, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32*, i32** %9, align 8
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %18, align 4
  br label %64

64:                                               ; preds = %61, %58
  %65 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %66 = icmp ne %struct.pf_addr* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i32, i32* %18, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %67
  store i32 1, i32* %19, align 4
  br label %71

71:                                               ; preds = %70, %67, %64
  %72 = load i32, i32* %18, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %71
  store i32 0, i32* %18, align 4
  br label %75

75:                                               ; preds = %74, %71
  br label %76

76:                                               ; preds = %203, %113, %75
  %77 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %78 = load i32, i32* %18, align 4
  %79 = load i64, i64* %13, align 8
  %80 = call %struct.pfr_kentry* @pfr_kentry_byidx(%struct.pfr_ktable* %77, i32 %78, i64 %79)
  store %struct.pfr_kentry* %80, %struct.pfr_kentry** %14, align 8
  %81 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %82 = icmp eq %struct.pfr_kentry* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %85 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  store i32 1, i32* %7, align 4
  br label %207

88:                                               ; preds = %76
  %89 = load i64, i64* %13, align 8
  %90 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %91 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @pfr_prepare_network(%union.sockaddr_union* @pfr_mask, i64 %89, i32 %92)
  %94 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %95 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %94, i32 0, i32 1
  %96 = load i64, i64* %13, align 8
  %97 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* %95, i64 %96)
  %98 = load %struct.pf_addr**, %struct.pf_addr*** %11, align 8
  store %struct.pf_addr* %97, %struct.pf_addr** %98, align 8
  %99 = load i64, i64* %13, align 8
  %100 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* @pfr_mask, i64 %99)
  %101 = load %struct.pf_addr**, %struct.pf_addr*** %12, align 8
  store %struct.pf_addr* %100, %struct.pf_addr** %101, align 8
  %102 = load i32, i32* %19, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %121

104:                                              ; preds = %88
  %105 = load %struct.pf_addr**, %struct.pf_addr*** %11, align 8
  %106 = load %struct.pf_addr*, %struct.pf_addr** %105, align 8
  %107 = load %struct.pf_addr**, %struct.pf_addr*** %12, align 8
  %108 = load %struct.pf_addr*, %struct.pf_addr** %107, align 8
  %109 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %110 = load i64, i64* %13, align 8
  %111 = call i32 @PF_MATCHA(i32 0, %struct.pf_addr* %106, %struct.pf_addr* %108, %struct.pf_addr* %109, i64 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %116, label %113

113:                                              ; preds = %104
  %114 = load i32, i32* %18, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %76

116:                                              ; preds = %104
  %117 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %118 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %119 = load i64, i64* %13, align 8
  %120 = call i32 @PF_ACPY(%struct.pf_addr* %117, %struct.pf_addr* %118, i64 %119)
  br label %127

121:                                              ; preds = %88
  %122 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %123 = load %struct.pf_addr**, %struct.pf_addr*** %11, align 8
  %124 = load %struct.pf_addr*, %struct.pf_addr** %123, align 8
  %125 = load i64, i64* %13, align 8
  %126 = call i32 @PF_ACPY(%struct.pf_addr* %122, %struct.pf_addr* %124, i64 %125)
  br label %127

127:                                              ; preds = %121, %116
  %128 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %129 = call i32 @KENTRY_NETWORK(%struct.pfr_kentry* %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %142, label %131

131:                                              ; preds = %127
  %132 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %133 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %134 = load i64, i64* %13, align 8
  %135 = call i32 @PF_ACPY(%struct.pf_addr* %132, %struct.pf_addr* %133, i64 %134)
  %136 = load i32, i32* %18, align 4
  %137 = load i32*, i32** %9, align 8
  store i32 %136, i32* %137, align 4
  %138 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %139 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %139, align 4
  store i32 0, i32* %7, align 4
  br label %207

142:                                              ; preds = %127
  br label %143

143:                                              ; preds = %206, %142
  %144 = load i64, i64* %13, align 8
  %145 = load i64, i64* @AF_INET, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %153

147:                                              ; preds = %143
  %148 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %149 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = call i64 @rn_match(%struct.TYPE_4__* @pfr_sin, i32 %150)
  %152 = inttoptr i64 %151 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %152, %struct.pfr_kentry** %15, align 8
  br label %165

153:                                              ; preds = %143
  %154 = load i64, i64* %13, align 8
  %155 = load i64, i64* @AF_INET6, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %153
  %158 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %159 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = call i64 @rn_match(%struct.TYPE_4__* @pfr_sin6, i32 %160)
  %162 = inttoptr i64 %161 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %162, %struct.pfr_kentry** %15, align 8
  br label %164

163:                                              ; preds = %153
  store i32 -1, i32* %7, align 4
  br label %207

164:                                              ; preds = %157
  br label %165

165:                                              ; preds = %164, %147
  %166 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %167 = load %struct.pfr_kentry*, %struct.pfr_kentry** %14, align 8
  %168 = icmp eq %struct.pfr_kentry* %166, %167
  br i1 %168, label %169, label %180

169:                                              ; preds = %165
  %170 = load %struct.pf_addr*, %struct.pf_addr** %10, align 8
  %171 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %172 = load i64, i64* %13, align 8
  %173 = call i32 @PF_ACPY(%struct.pf_addr* %170, %struct.pf_addr* %171, i64 %172)
  %174 = load i32, i32* %18, align 4
  %175 = load i32*, i32** %9, align 8
  store i32 %174, i32* %175, align 4
  %176 = load %struct.pfr_ktable*, %struct.pfr_ktable** %8, align 8
  %177 = getelementptr inbounds %struct.pfr_ktable, %struct.pfr_ktable* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  store i32 0, i32* %7, align 4
  br label %207

180:                                              ; preds = %165
  %181 = load i64, i64* @AF_INET, align 8
  %182 = load %struct.pfr_kentry*, %struct.pfr_kentry** %15, align 8
  %183 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @pfr_prepare_network(%union.sockaddr_union* %17, i64 %181, i32 %184)
  %186 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %187 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %188 = load i64, i64* %13, align 8
  %189 = call %struct.pf_addr* @SUNION2PF(%union.sockaddr_union* %17, i64 %188)
  %190 = load i64, i64* %13, align 8
  %191 = call i32 @PF_POOLMASK(%struct.pf_addr* %186, %struct.pf_addr* %187, %struct.pf_addr* %189, i32* @pfr_ffaddr, i64 %190)
  %192 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %193 = load i64, i64* %13, align 8
  %194 = call i32 @PF_AINC(%struct.pf_addr* %192, i64 %193)
  %195 = load %struct.pf_addr**, %struct.pf_addr*** %11, align 8
  %196 = load %struct.pf_addr*, %struct.pf_addr** %195, align 8
  %197 = load %struct.pf_addr**, %struct.pf_addr*** %12, align 8
  %198 = load %struct.pf_addr*, %struct.pf_addr** %197, align 8
  %199 = load %struct.pf_addr*, %struct.pf_addr** %16, align 8
  %200 = load i64, i64* %13, align 8
  %201 = call i32 @PF_MATCHA(i32 0, %struct.pf_addr* %196, %struct.pf_addr* %198, %struct.pf_addr* %199, i64 %200)
  %202 = icmp ne i32 %201, 0
  br i1 %202, label %206, label %203

203:                                              ; preds = %180
  %204 = load i32, i32* %18, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %18, align 4
  store i32 0, i32* %19, align 4
  br label %76

206:                                              ; preds = %180
  br label %143

207:                                              ; preds = %169, %163, %131, %83, %57, %32
  %208 = load i32, i32* %7, align 4
  ret i32 %208
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local %struct.pfr_kentry* @pfr_kentry_byidx(%struct.pfr_ktable*, i32, i64) #1

declare dso_local i32 @pfr_prepare_network(%union.sockaddr_union*, i64, i32) #1

declare dso_local %struct.pf_addr* @SUNION2PF(%union.sockaddr_union*, i64) #1

declare dso_local i32 @PF_MATCHA(i32, %struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, i64) #1

declare dso_local i32 @PF_ACPY(%struct.pf_addr*, %struct.pf_addr*, i64) #1

declare dso_local i32 @KENTRY_NETWORK(%struct.pfr_kentry*) #1

declare dso_local i64 @rn_match(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @PF_POOLMASK(%struct.pf_addr*, %struct.pf_addr*, %struct.pf_addr*, i32*, i64) #1

declare dso_local i32 @PF_AINC(%struct.pf_addr*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
