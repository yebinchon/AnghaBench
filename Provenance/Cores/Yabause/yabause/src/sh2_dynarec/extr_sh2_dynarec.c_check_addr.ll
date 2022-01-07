; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_check_addr.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Yabause/yabause/src/sh2_dynarec/extr_sh2_dynarec.c_check_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ll_entry = type { i32, i8*, %struct.ll_entry* }

@hash_table = common dso_local global i32** null, align 8
@MAX_OUTPUT_BLOCK_SIZE = common dso_local global i32 0, align 4
@out = common dso_local global i64 0, align 8
@TARGET_SIZE_2 = common dso_local global i32 0, align 4
@jump_in = common dso_local global %struct.ll_entry** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @check_addr(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ll_entry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32**, i32*** @hash_table, align 8
  %8 = load i32, i32* %3, align 4
  %9 = ashr i32 %8, 16
  %10 = load i32, i32* %3, align 4
  %11 = xor i32 %9, %10
  %12 = and i32 %11, 65535
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i32*, i32** %7, i64 %13
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %53

21:                                               ; preds = %1
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %26 = sub nsw i32 %24, %25
  %27 = load i64, i64* @out, align 8
  %28 = trunc i64 %27 to i32
  %29 = sub nsw i32 %26, %28
  %30 = load i32, i32* @TARGET_SIZE_2, align 4
  %31 = sub nsw i32 32, %30
  %32 = shl i32 %29, %31
  %33 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %34 = load i32, i32* @TARGET_SIZE_2, align 4
  %35 = sub nsw i32 32, %34
  %36 = shl i32 %33, %35
  %37 = add nsw i32 1610612736, %36
  %38 = icmp sgt i32 %32, %37
  br i1 %38, label %39, label %52

39:                                               ; preds = %21
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @isclean(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %39
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %2, align 8
  br label %206

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %21
  br label %53

53:                                               ; preds = %52, %1
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  %60 = load i32*, i32** %6, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %64 = sub nsw i32 %62, %63
  %65 = load i64, i64* @out, align 8
  %66 = trunc i64 %65 to i32
  %67 = sub nsw i32 %64, %66
  %68 = load i32, i32* @TARGET_SIZE_2, align 4
  %69 = sub nsw i32 32, %68
  %70 = shl i32 %67, %69
  %71 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %72 = load i32, i32* @TARGET_SIZE_2, align 4
  %73 = sub nsw i32 32, %72
  %74 = shl i32 %71, %73
  %75 = add nsw i32 1610612736, %74
  %76 = icmp sgt i32 %70, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %59
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 3
  %80 = load i32, i32* %79, align 4
  %81 = call i64 @isclean(i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %89

83:                                               ; preds = %77
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  store i8* %88, i8** %2, align 8
  br label %206

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %59
  br label %91

91:                                               ; preds = %90, %53
  %92 = load i32, i32* %3, align 4
  %93 = and i32 %92, -536870913
  %94 = lshr i32 %93, 12
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* %5, align 4
  %96 = icmp sgt i32 %95, 1024
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, 1023
  %100 = add nsw i32 1024, %99
  store i32 %100, i32* %5, align 4
  br label %101

101:                                              ; preds = %97, %91
  %102 = load %struct.ll_entry**, %struct.ll_entry*** @jump_in, align 8
  %103 = load i32, i32* %5, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ll_entry*, %struct.ll_entry** %102, i64 %104
  %106 = load %struct.ll_entry*, %struct.ll_entry** %105, align 8
  store %struct.ll_entry* %106, %struct.ll_entry** %4, align 8
  br label %107

107:                                              ; preds = %201, %101
  %108 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %109 = icmp ne %struct.ll_entry* %108, null
  br i1 %109, label %110, label %205

110:                                              ; preds = %107
  %111 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %112 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %3, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %201

116:                                              ; preds = %110
  %117 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %118 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %117, i32 0, i32 1
  %119 = load i8*, i8** %118, align 8
  %120 = ptrtoint i8* %119 to i32
  %121 = load i64, i64* @out, align 8
  %122 = trunc i64 %121 to i32
  %123 = sub nsw i32 %120, %122
  %124 = load i32, i32* @TARGET_SIZE_2, align 4
  %125 = sub nsw i32 32, %124
  %126 = shl i32 %123, %125
  %127 = load i32, i32* @MAX_OUTPUT_BLOCK_SIZE, align 4
  %128 = load i32, i32* @TARGET_SIZE_2, align 4
  %129 = sub nsw i32 32, %128
  %130 = shl i32 %127, %129
  %131 = add nsw i32 1610612736, %130
  %132 = icmp sgt i32 %126, %131
  br i1 %132, label %133, label %200

133:                                              ; preds = %116
  %134 = load i32*, i32** %6, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %136, %137
  br i1 %138, label %139, label %149

139:                                              ; preds = %133
  %140 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %141 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %140, i32 0, i32 1
  %142 = load i8*, i8** %141, align 8
  %143 = ptrtoint i8* %142 to i32
  %144 = load i32*, i32** %6, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 %143, i32* %145, align 4
  %146 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %147 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %146, i32 0, i32 1
  %148 = load i8*, i8** %147, align 8
  store i8* %148, i8** %2, align 8
  br label %206

149:                                              ; preds = %133
  %150 = load i32*, i32** %6, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 2
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %3, align 4
  %154 = icmp eq i32 %152, %153
  br i1 %154, label %155, label %165

155:                                              ; preds = %149
  %156 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %157 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %156, i32 0, i32 1
  %158 = load i8*, i8** %157, align 8
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %6, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 3
  store i32 %159, i32* %161, align 4
  %162 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %163 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %162, i32 0, i32 1
  %164 = load i8*, i8** %163, align 8
  store i8* %164, i8** %2, align 8
  br label %206

165:                                              ; preds = %149
  %166 = load i32*, i32** %6, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = icmp eq i32 %168, -1
  br i1 %169, label %170, label %180

170:                                              ; preds = %165
  %171 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %172 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %171, i32 0, i32 1
  %173 = load i8*, i8** %172, align 8
  %174 = ptrtoint i8* %173 to i32
  %175 = load i32*, i32** %6, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 1
  store i32 %174, i32* %176, align 4
  %177 = load i32, i32* %3, align 4
  %178 = load i32*, i32** %6, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  store i32 %177, i32* %179, align 4
  br label %196

180:                                              ; preds = %165
  %181 = load i32*, i32** %6, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, -1
  br i1 %184, label %185, label %195

185:                                              ; preds = %180
  %186 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %187 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %186, i32 0, i32 1
  %188 = load i8*, i8** %187, align 8
  %189 = ptrtoint i8* %188 to i32
  %190 = load i32*, i32** %6, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 3
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %3, align 4
  %193 = load i32*, i32** %6, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 2
  store i32 %192, i32* %194, align 4
  br label %195

195:                                              ; preds = %185, %180
  br label %196

196:                                              ; preds = %195, %170
  %197 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %198 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %197, i32 0, i32 1
  %199 = load i8*, i8** %198, align 8
  store i8* %199, i8** %2, align 8
  br label %206

200:                                              ; preds = %116
  br label %201

201:                                              ; preds = %200, %110
  %202 = load %struct.ll_entry*, %struct.ll_entry** %4, align 8
  %203 = getelementptr inbounds %struct.ll_entry, %struct.ll_entry* %202, i32 0, i32 2
  %204 = load %struct.ll_entry*, %struct.ll_entry** %203, align 8
  store %struct.ll_entry* %204, %struct.ll_entry** %4, align 8
  br label %107

205:                                              ; preds = %107
  store i8* null, i8** %2, align 8
  br label %206

206:                                              ; preds = %205, %196, %155, %139, %83, %45
  %207 = load i8*, i8** %2, align 8
  ret i8* %207
}

declare dso_local i64 @isclean(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
