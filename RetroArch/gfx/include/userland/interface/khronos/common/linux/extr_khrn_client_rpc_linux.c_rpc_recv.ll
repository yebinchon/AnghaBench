; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_rpc_recv.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/interface/khronos/common/linux/extr_khrn_client_rpc_linux.c_rpc_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64 }

@RPC_RECV_FLAG_RES = common dso_local global i32 0, align 4
@RPC_RECV_FLAG_CTRL = common dso_local global i32 0, align 4
@RPC_RECV_FLAG_LEN = common dso_local global i32 0, align 4
@RPC_RECV_FLAG_BULK = common dso_local global i32 0, align 4
@RPC_RECV_FLAG_BULK_SCATTER = common dso_local global i32 0, align 4
@workspace = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpc_recv(i32* %0, i8* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32*, i32** %7, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  store i32* %10, i32** %7, align 8
  br label %17

17:                                               ; preds = %16, %4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RPC_RECV_FLAG_RES, align 4
  %20 = load i32, i32* @RPC_RECV_FLAG_CTRL, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @RPC_RECV_FLAG_LEN, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %18, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %17
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @RPC_RECV_FLAG_BULK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br label %32

32:                                               ; preds = %27, %17
  %33 = phi i1 [ true, %17 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @vcos_assert(i32 %34)
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @RPC_RECV_FLAG_CTRL, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %32
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @RPC_RECV_FLAG_BULK, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  br label %46

46:                                               ; preds = %40, %32
  %47 = phi i1 [ true, %32 ], [ %45, %40 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @vcos_assert(i32 %48)
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %57, label %52

52:                                               ; preds = %46
  %53 = load i32*, i32** %7, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %241

57:                                               ; preds = %52, %46
  %58 = load i32*, i32** %5, align 8
  %59 = call i32 @merge_flush(i32* %58)
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %150

62:                                               ; preds = %57
  %63 = load i32*, i32** %5, align 8
  %64 = call i32 @get_queue(i32* %63)
  %65 = call %struct.TYPE_4__* @vchiu_queue_pop(i32 %64)
  store %struct.TYPE_4__* %65, %struct.TYPE_4__** %12, align 8
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = inttoptr i64 %68 to i32*
  store i32* %69, i32** %13, align 8
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @RPC_RECV_FLAG_LEN, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = mul nsw i32 %79, 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* @RPC_RECV_FLAG_RES, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = mul nsw i32 %87, 4
  %89 = add nsw i32 %80, %88
  %90 = icmp sge i32 %72, %89
  %91 = zext i1 %90 to i32
  %92 = call i32 @vcos_assert(i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @RPC_RECV_FLAG_LEN, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %62
  %98 = load i32*, i32** %13, align 8
  %99 = load i32, i32* %98, align 4
  %100 = load i32*, i32** %7, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  store i32 %99, i32* %101, align 4
  %102 = load i32*, i32** %13, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %13, align 8
  br label %104

104:                                              ; preds = %97, %62
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* @RPC_RECV_FLAG_RES, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %104
  %110 = load i32*, i32** %13, align 8
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %9, align 4
  %112 = load i32*, i32** %13, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 4
  store i32* %113, i32** %13, align 8
  br label %114

114:                                              ; preds = %109, %104
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @RPC_RECV_FLAG_CTRL, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %132

119:                                              ; preds = %114
  %120 = load i8*, i8** %6, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = load i32*, i32** %7, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @memcpy(i8* %120, i32* %121, i32 %124)
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32*, i32** %13, align 8
  %130 = sext i32 %128 to i64
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  store i32* %131, i32** %13, align 8
  br label %132

132:                                              ; preds = %119, %114
  %133 = load i32*, i32** %13, align 8
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %137, i64 %141
  %143 = icmp eq i32* %133, %142
  %144 = zext i1 %143 to i32
  %145 = call i32 @vcos_assert(i32 %144)
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @get_handle(i32* %146)
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %149 = call i32 @vchiq_release_message(i32 %147, %struct.TYPE_4__* %148)
  br label %150

150:                                              ; preds = %132, %57
  %151 = load i32, i32* %8, align 4
  %152 = load i32, i32* @RPC_RECV_FLAG_BULK, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %240

155:                                              ; preds = %150
  %156 = load i32*, i32** %7, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 0
  %158 = load i32, i32* %157, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %240

160:                                              ; preds = %155
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* @RPC_RECV_FLAG_BULK_SCATTER, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %232

165:                                              ; preds = %160
  %166 = load i32*, i32** %7, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = load i32*, i32** %7, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %194

173:                                              ; preds = %165
  %174 = load i32*, i32** %7, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 3
  %176 = load i32, i32* %175, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %194, label %178

178:                                              ; preds = %173
  %179 = load i32*, i32** %7, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 4
  %181 = load i32, i32* %180, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %194, label %183

183:                                              ; preds = %178
  %184 = load i32*, i32** %5, align 8
  %185 = load i8*, i8** %6, align 8
  %186 = load i32*, i32** %7, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 2
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %7, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 0
  %191 = load i32, i32* %190, align 4
  %192 = mul nsw i32 %188, %191
  %193 = call i32 @recv_bulk(i32* %184, i8* %185, i32 %192)
  br label %231

194:                                              ; preds = %178, %173, %165
  %195 = load i32*, i32** %7, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 2
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %7, align 8
  %199 = getelementptr inbounds i32, i32* %198, i64 0
  %200 = load i32, i32* %199, align 4
  %201 = mul nsw i32 %197, %200
  %202 = call i32 @check_workspace(i32 %201)
  %203 = load i32*, i32** %5, align 8
  %204 = load i8*, i8** @workspace, align 8
  %205 = load i32*, i32** %7, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 2
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %7, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = mul nsw i32 %207, %210
  %212 = call i32 @recv_bulk(i32* %203, i8* %204, i32 %211)
  %213 = load i8*, i8** %6, align 8
  %214 = load i32*, i32** %7, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 0
  %216 = load i32, i32* %215, align 4
  %217 = load i32*, i32** %7, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32*, i32** %7, align 8
  %221 = getelementptr inbounds i32, i32* %220, i64 2
  %222 = load i32, i32* %221, align 4
  %223 = load i32*, i32** %7, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 3
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %7, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 4
  %228 = load i32, i32* %227, align 4
  %229 = load i8*, i8** @workspace, align 8
  %230 = call i32 @rpc_scatter(i8* %213, i32 %216, i32 %219, i32 %222, i32 %225, i32 %228, i8* %229)
  br label %231

231:                                              ; preds = %194, %183
  br label %239

232:                                              ; preds = %160
  %233 = load i32*, i32** %5, align 8
  %234 = load i8*, i8** %6, align 8
  %235 = load i32*, i32** %7, align 8
  %236 = getelementptr inbounds i32, i32* %235, i64 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @recv_bulk(i32* %233, i8* %234, i32 %237)
  br label %239

239:                                              ; preds = %232, %231
  br label %240

240:                                              ; preds = %239, %155, %150
  br label %241

241:                                              ; preds = %240, %52
  %242 = load i32, i32* %9, align 4
  ret i32 %242
}

declare dso_local i32 @vcos_assert(i32) #1

declare dso_local i32 @merge_flush(i32*) #1

declare dso_local %struct.TYPE_4__* @vchiu_queue_pop(i32) #1

declare dso_local i32 @get_queue(i32*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @vchiq_release_message(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @get_handle(i32*) #1

declare dso_local i32 @recv_bulk(i32*, i8*, i32) #1

declare dso_local i32 @check_workspace(i32) #1

declare dso_local i32 @rpc_scatter(i8*, i32, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
