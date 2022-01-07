; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_get_lenenc_int.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_get_lenenc_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"%s: bytestream[%d] is %d\00", align 1
@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_5__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  store i8* %17, i8** %8, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp uge i64 %18, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %222

26:                                               ; preds = %2
  %27 = load i8*, i8** %8, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds i8, i8* %27, i64 %28
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp slt i32 %31, 251
  br i1 %32, label %33, label %39

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds i8, i8* %34, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  store i32 %38, i32* %7, align 4
  br label %214

39:                                               ; preds = %26
  %40 = load i8*, i8** %8, align 8
  %41 = load i64, i64* %6, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 252
  br i1 %45, label %46, label %74

46:                                               ; preds = %39
  %47 = load i64, i64* %6, align 8
  %48 = add i64 %47, 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp uge i64 %48, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  store i32 -1, i32* %3, align 4
  br label %222

56:                                               ; preds = %46
  %57 = load i8*, i8** %8, align 8
  %58 = load i64, i64* %6, align 8
  %59 = add i64 %58, 1
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = shl i32 %62, 0
  %64 = load i8*, i8** %8, align 8
  %65 = load i64, i64* %6, align 8
  %66 = add i64 %65, 2
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = shl i32 %69, 8
  %71 = or i32 %63, %70
  store i32 %71, i32* %7, align 4
  %72 = load i64, i64* %6, align 8
  %73 = add i64 %72, 2
  store i64 %73, i64* %6, align 8
  br label %213

74:                                               ; preds = %39
  %75 = load i8*, i8** %8, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 253
  br i1 %80, label %81, label %117

81:                                               ; preds = %74
  %82 = load i64, i64* %6, align 8
  %83 = add i64 %82, 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = icmp uge i64 %83, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  store i32 -1, i32* %3, align 4
  br label %222

91:                                               ; preds = %81
  %92 = load i8*, i8** %8, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add i64 %93, 1
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i32
  %98 = shl i32 %97, 0
  %99 = load i8*, i8** %8, align 8
  %100 = load i64, i64* %6, align 8
  %101 = add i64 %100, 2
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = shl i32 %104, 8
  %106 = or i32 %98, %105
  %107 = load i8*, i8** %8, align 8
  %108 = load i64, i64* %6, align 8
  %109 = add i64 %108, 3
  %110 = getelementptr inbounds i8, i8* %107, i64 %109
  %111 = load i8, i8* %110, align 1
  %112 = zext i8 %111 to i32
  %113 = shl i32 %112, 16
  %114 = or i32 %106, %113
  store i32 %114, i32* %7, align 4
  %115 = load i64, i64* %6, align 8
  %116 = add i64 %115, 3
  store i64 %116, i64* %6, align 8
  br label %212

117:                                              ; preds = %74
  %118 = load i8*, i8** %8, align 8
  %119 = load i64, i64* %6, align 8
  %120 = getelementptr inbounds i8, i8* %118, i64 %119
  %121 = load i8, i8* %120, align 1
  %122 = zext i8 %121 to i32
  %123 = icmp eq i32 %122, 254
  br i1 %123, label %124, label %203

124:                                              ; preds = %117
  %125 = load i64, i64* %6, align 8
  %126 = add i64 %125, 8
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = icmp uge i64 %126, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  store i32 -1, i32* %3, align 4
  br label %222

134:                                              ; preds = %124
  %135 = load i8*, i8** %8, align 8
  %136 = load i64, i64* %6, align 8
  %137 = add i64 %136, 5
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = shl i32 %140, 0
  %142 = load i8*, i8** %8, align 8
  %143 = load i64, i64* %6, align 8
  %144 = add i64 %143, 6
  %145 = getelementptr inbounds i8, i8* %142, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  %148 = shl i32 %147, 8
  %149 = or i32 %141, %148
  %150 = load i8*, i8** %8, align 8
  %151 = load i64, i64* %6, align 8
  %152 = add i64 %151, 7
  %153 = getelementptr inbounds i8, i8* %150, i64 %152
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = shl i32 %155, 16
  %157 = or i32 %149, %156
  %158 = load i8*, i8** %8, align 8
  %159 = load i64, i64* %6, align 8
  %160 = add i64 %159, 8
  %161 = getelementptr inbounds i8, i8* %158, i64 %160
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = shl i32 %163, 24
  %165 = or i32 %157, %164
  store i32 %165, i32* %7, align 4
  %166 = load i32, i32* %7, align 4
  %167 = shl i32 %166, 32
  store i32 %167, i32* %7, align 4
  %168 = load i8*, i8** %8, align 8
  %169 = load i64, i64* %6, align 8
  %170 = add i64 %169, 1
  %171 = getelementptr inbounds i8, i8* %168, i64 %170
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  %174 = shl i32 %173, 0
  %175 = load i8*, i8** %8, align 8
  %176 = load i64, i64* %6, align 8
  %177 = add i64 %176, 2
  %178 = getelementptr inbounds i8, i8* %175, i64 %177
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = shl i32 %180, 8
  %182 = or i32 %174, %181
  %183 = load i8*, i8** %8, align 8
  %184 = load i64, i64* %6, align 8
  %185 = add i64 %184, 3
  %186 = getelementptr inbounds i8, i8* %183, i64 %185
  %187 = load i8, i8* %186, align 1
  %188 = zext i8 %187 to i32
  %189 = shl i32 %188, 16
  %190 = or i32 %182, %189
  %191 = load i8*, i8** %8, align 8
  %192 = load i64, i64* %6, align 8
  %193 = add i64 %192, 4
  %194 = getelementptr inbounds i8, i8* %191, i64 %193
  %195 = load i8, i8* %194, align 1
  %196 = zext i8 %195 to i32
  %197 = shl i32 %196, 24
  %198 = or i32 %190, %197
  %199 = load i32, i32* %7, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %7, align 4
  %201 = load i64, i64* %6, align 8
  %202 = add i64 %201, 8
  store i64 %202, i64* %6, align 8
  br label %211

203:                                              ; preds = %117
  %204 = load i32, i32* @G_STRLOC, align 4
  %205 = load i64, i64* %6, align 8
  %206 = load i8*, i8** %8, align 8
  %207 = load i64, i64* %6, align 8
  %208 = getelementptr inbounds i8, i8* %206, i64 %207
  %209 = load i8, i8* %208, align 1
  %210 = call i32 @g_critical(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %204, i64 %205, i8 zeroext %209)
  store i32 -1, i32* %3, align 4
  br label %222

211:                                              ; preds = %134
  br label %212

212:                                              ; preds = %211, %91
  br label %213

213:                                              ; preds = %212, %56
  br label %214

214:                                              ; preds = %213, %33
  %215 = load i64, i64* %6, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %6, align 8
  %217 = load i64, i64* %6, align 8
  %218 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 0
  store i64 %217, i64* %219, align 8
  %220 = load i32, i32* %7, align 4
  %221 = load i32*, i32** %5, align 8
  store i32 %220, i32* %221, align 4
  store i32 0, i32* %3, align 4
  br label %222

222:                                              ; preds = %214, %203, %133, %90, %55, %25
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @g_critical(i8*, i32, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
