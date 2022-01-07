; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_fixchange.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_route.c_rt_fixchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node = type { i32 }
%struct.rtentry = type { i32, %struct.rtentry* }
%struct.rtfc_arg = type { %struct.radix_node_head*, %struct.rtentry* }
%struct.radix_node_head = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@rnh_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@RTF_CLONING = common dso_local global i32 0, align 4
@RTF_PRCLONING = common dso_local global i32 0, align 4
@RTM_DELETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.radix_node*, i8*)* @rt_fixchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt_fixchange(%struct.radix_node* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.radix_node*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rtentry*, align 8
  %7 = alloca %struct.rtfc_arg*, align 8
  %8 = alloca %struct.rtentry*, align 8
  %9 = alloca %struct.radix_node_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.radix_node* %0, %struct.radix_node** %4, align 8
  store i8* %1, i8** %5, align 8
  %17 = load %struct.radix_node*, %struct.radix_node** %4, align 8
  %18 = bitcast %struct.radix_node* %17 to %struct.rtentry*
  store %struct.rtentry* %18, %struct.rtentry** %6, align 8
  %19 = load i8*, i8** %5, align 8
  %20 = bitcast i8* %19 to %struct.rtfc_arg*
  store %struct.rtfc_arg* %20, %struct.rtfc_arg** %7, align 8
  %21 = load %struct.rtfc_arg*, %struct.rtfc_arg** %7, align 8
  %22 = getelementptr inbounds %struct.rtfc_arg, %struct.rtfc_arg* %21, i32 0, i32 1
  %23 = load %struct.rtentry*, %struct.rtentry** %22, align 8
  store %struct.rtentry* %23, %struct.rtentry** %8, align 8
  %24 = load %struct.rtfc_arg*, %struct.rtfc_arg** %7, align 8
  %25 = getelementptr inbounds %struct.rtfc_arg, %struct.rtfc_arg* %24, i32 0, i32 0
  %26 = load %struct.radix_node_head*, %struct.radix_node_head** %25, align 8
  store %struct.radix_node_head* %26, %struct.radix_node_head** %9, align 8
  %27 = load i32, i32* @rnh_lock, align 4
  %28 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %29 = call i32 @LCK_MTX_ASSERT(i32 %27, i32 %28)
  %30 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %31 = call i32 @RT_LOCK(%struct.rtentry* %30)
  %32 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %33 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %32, i32 0, i32 1
  %34 = load %struct.rtentry*, %struct.rtentry** %33, align 8
  %35 = icmp ne %struct.rtentry* %34, null
  br i1 %35, label %36, label %45

36:                                               ; preds = %2
  %37 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %38 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @RTF_CLONING, align 4
  %41 = load i32, i32* @RTF_PRCLONING, align 4
  %42 = or i32 %40, %41
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36, %2
  %46 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %47 = call i32 @RT_UNLOCK(%struct.rtentry* %46)
  store i32 0, i32* %3, align 4
  br label %187

48:                                               ; preds = %36
  %49 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %50 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %49, i32 0, i32 1
  %51 = load %struct.rtentry*, %struct.rtentry** %50, align 8
  %52 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %53 = icmp eq %struct.rtentry* %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  br label %175

55:                                               ; preds = %48
  %56 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %57 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %56)
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %61 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %60)
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @imin(i32 %59, i32 %63)
  store i32 %64, i32* %15, align 4
  %65 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %66 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %65)
  %67 = bitcast %struct.TYPE_7__* %66 to i32*
  store i32* %67, i32** %10, align 8
  %68 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %69 = call %struct.TYPE_8__* @rt_mask(%struct.rtentry* %68)
  %70 = bitcast %struct.TYPE_8__* %69 to i32*
  store i32* %70, i32** %11, align 8
  %71 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %72 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %71)
  %73 = bitcast %struct.TYPE_7__* %72 to i32*
  store i32* %73, i32** %12, align 8
  %74 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %75 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %74, i32 0, i32 1
  %76 = load %struct.rtentry*, %struct.rtentry** %75, align 8
  %77 = call %struct.TYPE_8__* @rt_mask(%struct.rtentry* %76)
  %78 = bitcast %struct.TYPE_8__* %77 to i32*
  store i32* %78, i32** %13, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %139

80:                                               ; preds = %55
  %81 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %82 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %81, i32 0, i32 1
  %83 = load %struct.rtentry*, %struct.rtentry** %82, align 8
  %84 = call %struct.TYPE_8__* @rt_mask(%struct.rtentry* %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %16, align 4
  %87 = load i32, i32* %16, align 4
  %88 = load %struct.rtentry*, %struct.rtentry** %8, align 8
  %89 = call %struct.TYPE_8__* @rt_mask(%struct.rtentry* %88)
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = icmp sgt i32 %87, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %80
  %94 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %95 = call i32 @RT_UNLOCK(%struct.rtentry* %94)
  store i32 0, i32* %3, align 4
  br label %187

96:                                               ; preds = %80
  %97 = load %struct.radix_node_head*, %struct.radix_node_head** %9, align 8
  %98 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %14, align 4
  br label %102

102:                                              ; preds = %135, %96
  %103 = load i32, i32* %14, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %138

106:                                              ; preds = %102
  %107 = load i32*, i32** %13, align 8
  %108 = load i32, i32* %14, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32*, i32** %11, align 8
  %118 = load i32, i32* %14, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = xor i32 %116, %121
  %123 = xor i32 %122, -1
  %124 = and i32 %111, %123
  %125 = load i32*, i32** %13, align 8
  %126 = load i32, i32* %14, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = icmp ne i32 %124, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %106
  %132 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %133 = call i32 @RT_UNLOCK(%struct.rtentry* %132)
  store i32 0, i32* %3, align 4
  br label %187

134:                                              ; preds = %106
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %14, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %14, align 4
  br label %102

138:                                              ; preds = %102
  br label %139

139:                                              ; preds = %138, %55
  %140 = load %struct.radix_node_head*, %struct.radix_node_head** %9, align 8
  %141 = getelementptr inbounds %struct.radix_node_head, %struct.radix_node_head* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  store i32 %144, i32* %14, align 4
  br label %145

145:                                              ; preds = %171, %139
  %146 = load i32, i32* %14, align 4
  %147 = load i32, i32* %15, align 4
  %148 = icmp slt i32 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %145
  %150 = load i32*, i32** %12, align 8
  %151 = load i32, i32* %14, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = load i32*, i32** %11, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %154, %159
  %161 = load i32*, i32** %10, align 8
  %162 = load i32, i32* %14, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %160, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %149
  %168 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %169 = call i32 @RT_UNLOCK(%struct.rtentry* %168)
  store i32 0, i32* %3, align 4
  br label %187

170:                                              ; preds = %149
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %14, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %14, align 4
  br label %145

174:                                              ; preds = %145
  br label %175

175:                                              ; preds = %174, %54
  %176 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %177 = call i32 @RT_UNLOCK(%struct.rtentry* %176)
  %178 = load i32, i32* @RTM_DELETE, align 4
  %179 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %180 = call %struct.TYPE_7__* @rt_key(%struct.rtentry* %179)
  %181 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %182 = call %struct.TYPE_8__* @rt_mask(%struct.rtentry* %181)
  %183 = load %struct.rtentry*, %struct.rtentry** %6, align 8
  %184 = getelementptr inbounds %struct.rtentry, %struct.rtentry* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i32 @rtrequest_locked(i32 %178, %struct.TYPE_7__* %180, i32* null, %struct.TYPE_8__* %182, i32 %185, i32* null)
  store i32 %186, i32* %3, align 4
  br label %187

187:                                              ; preds = %175, %167, %131, %93, %45
  %188 = load i32, i32* %3, align 4
  ret i32 %188
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @RT_LOCK(%struct.rtentry*) #1

declare dso_local i32 @RT_UNLOCK(%struct.rtentry*) #1

declare dso_local i32 @imin(i32, i32) #1

declare dso_local %struct.TYPE_7__* @rt_key(%struct.rtentry*) #1

declare dso_local %struct.TYPE_8__* @rt_mask(%struct.rtentry*) #1

declare dso_local i32 @rtrequest_locked(i32, %struct.TYPE_7__*, i32*, %struct.TYPE_8__*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
