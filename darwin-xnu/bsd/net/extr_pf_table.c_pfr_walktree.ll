; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_walktree.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_table.c_pfr_walktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.pfr_kentry = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.pfr_walktree = type { i32, i32, i32, i32, %struct.TYPE_2__*, %struct.pfr_kentry*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8*, i8*, i32, i8*, i8*, i32 }
%struct.pfr_addr = type { i32 }
%struct.pfr_astats = type { i32, i32, i32, i32, %struct.pfr_addr }

@pf_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@pfrke_workq = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@pfr_mask = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @pfr_walktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pfr_walktree(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pfr_kentry*, align 8
  %7 = alloca %struct.pfr_walktree*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pfr_addr, align 4
  %10 = alloca %struct.pfr_astats, align 4
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %12 = bitcast %struct.radix_node* %11 to %struct.pfr_kentry*
  store %struct.pfr_kentry* %12, %struct.pfr_kentry** %6, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.pfr_walktree*
  store %struct.pfr_walktree* %14, %struct.pfr_walktree** %7, align 8
  %15 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %16 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* @pf_lock, align 4
  %19 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %20 = call i32 @LCK_MTX_ASSERT(i32 %18, i32 %19)
  %21 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %22 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %204 [
    i32 130, label %24
    i32 128, label %27
    i32 133, label %34
    i32 132, label %45
    i32 131, label %69
    i32 129, label %111
    i32 134, label %128
  ]

24:                                               ; preds = %2
  %25 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %26 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %25, i32 0, i32 7
  store i32 0, i32* %26, align 4
  br label %204

27:                                               ; preds = %2
  %28 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %29 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %204

33:                                               ; preds = %27
  br label %34

34:                                               ; preds = %2, %33
  %35 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %36 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %39 = load i32, i32* @pfrke_workq, align 4
  %40 = call i32 @SLIST_INSERT_HEAD(i32 %37, %struct.pfr_kentry* %38, i32 %39)
  %41 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %42 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 8
  br label %204

45:                                               ; preds = %2
  %46 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %47 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %46, i32 0, i32 7
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %47, align 4
  %50 = icmp sgt i32 %48, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %45
  %52 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %53 = call i32 @pfr_copyout_addr(%struct.pfr_addr* %9, %struct.pfr_kentry* %52)
  %54 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %55 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @copyout(%struct.pfr_addr* %9, i32 %56, i32 4)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %51
  %60 = load i32, i32* @EFAULT, align 4
  store i32 %60, i32* %3, align 4
  br label %205

61:                                               ; preds = %51
  %62 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %63 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = add i64 %65, 4
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %63, align 8
  br label %68

68:                                               ; preds = %61, %45
  br label %204

69:                                               ; preds = %2
  %70 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %71 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %71, align 4
  %74 = icmp sgt i32 %72, 0
  br i1 %74, label %75, label %110

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %10, i32 0, i32 4
  %77 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %78 = call i32 @pfr_copyout_addr(%struct.pfr_addr* %76, %struct.pfr_kentry* %77)
  %79 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %80 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %10, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @bcopy(i32 %81, i32 %83, i32 4)
  %85 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %86 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %10, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @bcopy(i32 %87, i32 %89, i32 4)
  %91 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %92 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = getelementptr inbounds %struct.pfr_astats, %struct.pfr_astats* %10, i32 0, i32 0
  store i32 %93, i32* %94, align 4
  %95 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %96 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @COPYOUT(%struct.pfr_astats* %10, i32 %97, i32 20, i32 %98)
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %75
  %102 = load i32, i32* @EFAULT, align 4
  store i32 %102, i32* %3, align 4
  br label %205

103:                                              ; preds = %75
  %104 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %105 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add i64 %107, 20
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  br label %110

110:                                              ; preds = %103, %69
  br label %204

111:                                              ; preds = %2
  %112 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %113 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  br label %204

117:                                              ; preds = %111
  %118 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %119 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 8
  %122 = icmp ne i32 %120, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %117
  %124 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %125 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %126 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %125, i32 0, i32 5
  store %struct.pfr_kentry* %124, %struct.pfr_kentry** %126, align 8
  store i32 1, i32* %3, align 4
  br label %205

127:                                              ; preds = %117
  br label %204

128:                                              ; preds = %2
  %129 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %130 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* @AF_INET, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %165

134:                                              ; preds = %128
  %135 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %136 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %135, i32 0, i32 4
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  %141 = icmp sgt i32 %139, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134
  br label %204

143:                                              ; preds = %134
  %144 = load i32, i32* @AF_INET, align 4
  %145 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %146 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @pfr_prepare_network(i32* @pfr_mask, i32 %144, i32 %147)
  %149 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %150 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %149, i32 0, i32 0
  %151 = load i32, i32* @AF_INET, align 4
  %152 = call i8** @SUNION2PF(i32* %150, i32 %151)
  %153 = load i8*, i8** %152, align 8
  %154 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %155 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %154, i32 0, i32 4
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 4
  store i8* %153, i8** %157, align 8
  %158 = load i32, i32* @AF_INET, align 4
  %159 = call i8** @SUNION2PF(i32* @pfr_mask, i32 %158)
  %160 = load i8*, i8** %159, align 8
  %161 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %162 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %161, i32 0, i32 4
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 3
  store i8* %160, i8** %164, align 8
  br label %203

165:                                              ; preds = %128
  %166 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %167 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %166, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = load i32, i32* @AF_INET6, align 4
  %170 = icmp eq i32 %168, %169
  br i1 %170, label %171, label %202

171:                                              ; preds = %165
  %172 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %173 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %172, i32 0, i32 4
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %175, align 8
  %178 = icmp sgt i32 %176, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %171
  br label %204

180:                                              ; preds = %171
  %181 = load i32, i32* @AF_INET6, align 4
  %182 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %183 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @pfr_prepare_network(i32* @pfr_mask, i32 %181, i32 %184)
  %186 = load %struct.pfr_kentry*, %struct.pfr_kentry** %6, align 8
  %187 = getelementptr inbounds %struct.pfr_kentry, %struct.pfr_kentry* %186, i32 0, i32 0
  %188 = load i32, i32* @AF_INET6, align 4
  %189 = call i8** @SUNION2PF(i32* %187, i32 %188)
  %190 = load i8*, i8** %189, align 8
  %191 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %192 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %191, i32 0, i32 4
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  store i8* %190, i8** %194, align 8
  %195 = load i32, i32* @AF_INET6, align 4
  %196 = call i8** @SUNION2PF(i32* @pfr_mask, i32 %195)
  %197 = load i8*, i8** %196, align 8
  %198 = load %struct.pfr_walktree*, %struct.pfr_walktree** %7, align 8
  %199 = getelementptr inbounds %struct.pfr_walktree, %struct.pfr_walktree* %198, i32 0, i32 4
  %200 = load %struct.TYPE_2__*, %struct.TYPE_2__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %200, i32 0, i32 0
  store i8* %197, i8** %201, align 8
  br label %202

202:                                              ; preds = %180, %165
  br label %203

203:                                              ; preds = %202, %143
  br label %204

204:                                              ; preds = %2, %203, %179, %142, %127, %116, %110, %68, %34, %32, %24
  store i32 0, i32* %3, align 4
  br label %205

205:                                              ; preds = %204, %123, %101, %59
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @SLIST_INSERT_HEAD(i32, %struct.pfr_kentry*, i32) #1

declare dso_local i32 @pfr_copyout_addr(%struct.pfr_addr*, %struct.pfr_kentry*) #1

declare dso_local i32 @copyout(%struct.pfr_addr*, i32, i32) #1

declare dso_local i32 @bcopy(i32, i32, i32) #1

declare dso_local i32 @COPYOUT(%struct.pfr_astats*, i32, i32, i32) #1

declare dso_local i32 @pfr_prepare_network(i32*, i32, i32) #1

declare dso_local i8** @SUNION2PF(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
