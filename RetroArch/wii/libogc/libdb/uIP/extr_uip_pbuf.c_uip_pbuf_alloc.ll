; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_alloc.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/uIP/extr_uip_pbuf.c_uip_pbuf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i32, i32, i32, i8*, %struct.uip_pbuf*, i32* }

@UIP_TRANSPORT_HLEN = common dso_local global i32 0, align 4
@UIP_IP_HLEN = common dso_local global i32 0, align 4
@UIP_LL_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"uip_pbuf_alloc: bad pbuf layer.\0A\00", align 1
@uip_pool_pbufs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"uip_pbuf_alloc: couldn't allocate pbuf(p) from pool\0A\00", align 1
@UIP_PBUF_POOL_BUFSIZE = common dso_local global i32 0, align 4
@UIP_PBUF_FLAG_POOL = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [53 x i8] c"uip_pbuf_alloc: couldn't allocate pbuf(q) from pool\0A\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"uip_pbuf_alloc: couldn't allocate pbuf from ram\0A\00", align 1
@UIP_PBUF_FLAG_RAM = common dso_local global i8* null, align 8
@uip_rom_pbufs = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"uip_pbuf_alloc: couldn't allocate pbuf from rom/ref\0A\00", align 1
@UIP_PBUF_FLAG_ROM = common dso_local global i8* null, align 8
@UIP_PBUF_FLAG_REF = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [33 x i8] c"uip_pbuf_alloc: bad flag value.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.uip_pbuf* @uip_pbuf_alloc(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.uip_pbuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.uip_pbuf*, align 8
  %11 = alloca %struct.uip_pbuf*, align 8
  %12 = alloca %struct.uip_pbuf*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %27 [
    i32 128, label %14
    i32 135, label %18
    i32 134, label %22
    i32 131, label %26
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* @UIP_TRANSPORT_HLEN, align 4
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, %15
  store i32 %17, i32* %8, align 4
  br label %18

18:                                               ; preds = %3, %14
  %19 = load i32, i32* @UIP_IP_HLEN, align 4
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %3, %18
  %23 = load i32, i32* @UIP_LL_HLEN, align 4
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %8, align 4
  br label %29

26:                                               ; preds = %3
  br label %29

27:                                               ; preds = %3
  %28 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %4, align 8
  br label %195

29:                                               ; preds = %26, %22
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %189 [
    i32 133, label %31
    i32 132, label %128
    i32 129, label %163
    i32 130, label %163
  ]

31:                                               ; preds = %29
  %32 = call %struct.uip_pbuf* @memb_alloc(i32* @uip_pool_pbufs)
  store %struct.uip_pbuf* %32, %struct.uip_pbuf** %10, align 8
  %33 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %34 = icmp eq %struct.uip_pbuf* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %4, align 8
  br label %195

37:                                               ; preds = %31
  %38 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %39 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %38, i32 0, i32 4
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %39, align 8
  %40 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %41 = bitcast %struct.uip_pbuf* %40 to i8*
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 40, %43
  %45 = getelementptr i8, i8* %41, i64 %44
  %46 = call i8* @MEM_ALIGN(i8* %45)
  %47 = bitcast i8* %46 to i32*
  %48 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %49 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %48, i32 0, i32 5
  store i32* %47, i32** %49, align 8
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %52 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @UIP_PBUF_POOL_BUFSIZE, align 4
  %55 = load i32, i32* %8, align 4
  %56 = sub nsw i32 %54, %55
  %57 = icmp sgt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %37
  %59 = load i32, i32* @UIP_PBUF_POOL_BUFSIZE, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub nsw i32 %59, %60
  br label %64

62:                                               ; preds = %37
  %63 = load i32, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = phi i32 [ %61, %58 ], [ %63, %62 ]
  %66 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %67 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** @UIP_PBUF_FLAG_POOL, align 8
  %69 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %70 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %72 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %71, i32 0, i32 2
  store i32 1, i32* %72, align 8
  %73 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  store %struct.uip_pbuf* %73, %struct.uip_pbuf** %12, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %76 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %74, %77
  store i32 %78, i32* %9, align 4
  br label %79

79:                                               ; preds = %106, %64
  %80 = load i32, i32* %9, align 4
  %81 = icmp sgt i32 %80, 0
  br i1 %81, label %82, label %127

82:                                               ; preds = %79
  %83 = call %struct.uip_pbuf* @memb_alloc(i32* @uip_pool_pbufs)
  store %struct.uip_pbuf* %83, %struct.uip_pbuf** %11, align 8
  %84 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %85 = icmp eq %struct.uip_pbuf* %84, null
  br i1 %85, label %86, label %90

86:                                               ; preds = %82
  %87 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.2, i64 0, i64 0))
  %88 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %89 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %88)
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %4, align 8
  br label %195

90:                                               ; preds = %82
  %91 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %92 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %91, i32 0, i32 4
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %92, align 8
  %93 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %94 = load %struct.uip_pbuf*, %struct.uip_pbuf** %12, align 8
  %95 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %94, i32 0, i32 4
  store %struct.uip_pbuf* %93, %struct.uip_pbuf** %95, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %98 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load i32, i32* %9, align 4
  %100 = load i32, i32* @UIP_PBUF_POOL_BUFSIZE, align 4
  %101 = icmp sgt i32 %99, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %90
  %103 = load i32, i32* @UIP_PBUF_POOL_BUFSIZE, align 4
  br label %106

104:                                              ; preds = %90
  %105 = load i32, i32* %9, align 4
  br label %106

106:                                              ; preds = %104, %102
  %107 = phi i32 [ %103, %102 ], [ %105, %104 ]
  %108 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %109 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %111 = bitcast %struct.uip_pbuf* %110 to i8*
  %112 = getelementptr i8, i8* %111, i64 40
  %113 = bitcast i8* %112 to i32*
  %114 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %115 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %114, i32 0, i32 5
  store i32* %113, i32** %115, align 8
  %116 = load i8*, i8** @UIP_PBUF_FLAG_POOL, align 8
  %117 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %118 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %117, i32 0, i32 3
  store i8* %116, i8** %118, align 8
  %119 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %120 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %119, i32 0, i32 2
  store i32 1, i32* %120, align 8
  %121 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %122 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  store %struct.uip_pbuf* %126, %struct.uip_pbuf** %12, align 8
  br label %79

127:                                              ; preds = %79
  br label %191

128:                                              ; preds = %29
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = add i64 40, %130
  %132 = trunc i64 %131 to i32
  %133 = call i64 @MEM_ALIGN_SIZE(i32 %132)
  %134 = load i32, i32* %6, align 4
  %135 = call i64 @MEM_ALIGN_SIZE(i32 %134)
  %136 = add nsw i64 %133, %135
  %137 = call %struct.uip_pbuf* @memr_malloc(i64 %136)
  store %struct.uip_pbuf* %137, %struct.uip_pbuf** %10, align 8
  %138 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %139 = icmp eq %struct.uip_pbuf* %138, null
  br i1 %139, label %140, label %142

140:                                              ; preds = %128
  %141 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %4, align 8
  br label %195

142:                                              ; preds = %128
  %143 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %144 = bitcast %struct.uip_pbuf* %143 to i8*
  %145 = getelementptr i8, i8* %144, i64 40
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr i8, i8* %145, i64 %147
  %149 = call i8* @MEM_ALIGN(i8* %148)
  %150 = bitcast i8* %149 to i32*
  %151 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %152 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %151, i32 0, i32 5
  store i32* %150, i32** %152, align 8
  %153 = load i32, i32* %6, align 4
  %154 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %155 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %157 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %156, i32 0, i32 1
  store i32 %153, i32* %157, align 4
  %158 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %159 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %158, i32 0, i32 4
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %159, align 8
  %160 = load i8*, i8** @UIP_PBUF_FLAG_RAM, align 8
  %161 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %162 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %161, i32 0, i32 3
  store i8* %160, i8** %162, align 8
  br label %191

163:                                              ; preds = %29, %29
  %164 = call %struct.uip_pbuf* @memb_alloc(i32* @uip_rom_pbufs)
  store %struct.uip_pbuf* %164, %struct.uip_pbuf** %10, align 8
  %165 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %166 = icmp eq %struct.uip_pbuf* %165, null
  br i1 %166, label %167, label %169

167:                                              ; preds = %163
  %168 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0))
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %4, align 8
  br label %195

169:                                              ; preds = %163
  %170 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %171 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %170, i32 0, i32 5
  store i32* null, i32** %171, align 8
  %172 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %173 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %172, i32 0, i32 4
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %173, align 8
  %174 = load i32, i32* %6, align 4
  %175 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %176 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %175, i32 0, i32 0
  store i32 %174, i32* %176, align 8
  %177 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %178 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %177, i32 0, i32 1
  store i32 %174, i32* %178, align 4
  %179 = load i32, i32* %7, align 4
  %180 = icmp eq i32 %179, 129
  br i1 %180, label %181, label %183

181:                                              ; preds = %169
  %182 = load i8*, i8** @UIP_PBUF_FLAG_ROM, align 8
  br label %185

183:                                              ; preds = %169
  %184 = load i8*, i8** @UIP_PBUF_FLAG_REF, align 8
  br label %185

185:                                              ; preds = %183, %181
  %186 = phi i8* [ %182, %181 ], [ %184, %183 ]
  %187 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %188 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %187, i32 0, i32 3
  store i8* %186, i8** %188, align 8
  br label %191

189:                                              ; preds = %29
  %190 = call i32 @UIP_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  store %struct.uip_pbuf* null, %struct.uip_pbuf** %4, align 8
  br label %195

191:                                              ; preds = %185, %142, %127
  %192 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  %193 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %192, i32 0, i32 2
  store i32 1, i32* %193, align 8
  %194 = load %struct.uip_pbuf*, %struct.uip_pbuf** %10, align 8
  store %struct.uip_pbuf* %194, %struct.uip_pbuf** %4, align 8
  br label %195

195:                                              ; preds = %191, %189, %167, %140, %86, %35, %27
  %196 = load %struct.uip_pbuf*, %struct.uip_pbuf** %4, align 8
  ret %struct.uip_pbuf* %196
}

declare dso_local i32 @UIP_ERROR(i8*) #1

declare dso_local %struct.uip_pbuf* @memb_alloc(i32*) #1

declare dso_local i8* @MEM_ALIGN(i8*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

declare dso_local %struct.uip_pbuf* @memr_malloc(i64) #1

declare dso_local i64 @MEM_ALIGN_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
