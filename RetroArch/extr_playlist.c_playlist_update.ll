; ModuleID = '/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_update.c'
source_filename = "/home/carl/AnghaBench/RetroArch/extr_playlist.c_playlist_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, %struct.playlist_entry* }
%struct.playlist_entry = type { i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @playlist_update(%struct.TYPE_3__* %0, i64 %1, %struct.playlist_entry* %2) #0 {
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.playlist_entry*, align 8
  %7 = alloca %struct.playlist_entry*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.playlist_entry* %2, %struct.playlist_entry** %6, align 8
  store %struct.playlist_entry* null, %struct.playlist_entry** %7, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = icmp ne %struct.TYPE_3__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ugt i64 %11, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %3
  br label %222

17:                                               ; preds = %10
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load %struct.playlist_entry*, %struct.playlist_entry** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %20, i64 %21
  store %struct.playlist_entry* %22, %struct.playlist_entry** %7, align 8
  %23 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %24 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %55

27:                                               ; preds = %17
  %28 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %29 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %28, i32 0, i32 5
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %32 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %31, i32 0, i32 5
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %30, %33
  br i1 %34, label %35, label %55

35:                                               ; preds = %27
  %36 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %37 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %36, i32 0, i32 5
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %42 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @free(i32* %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %47 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  %49 = call i8* @strdup(i32* %48)
  %50 = bitcast i8* %49 to i32*
  %51 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %52 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %51, i32 0, i32 5
  store i32* %50, i32** %52, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  store i32 1, i32* %54, align 8
  br label %55

55:                                               ; preds = %45, %27, %17
  %56 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %57 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %56, i32 0, i32 4
  %58 = load i32*, i32** %57, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %88

60:                                               ; preds = %55
  %61 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %62 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %61, i32 0, i32 4
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %65 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %63, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %60
  %69 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %70 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %69, i32 0, i32 4
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %75 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %74, i32 0, i32 4
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @free(i32* %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %80 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %79, i32 0, i32 4
  %81 = load i32*, i32** %80, align 8
  %82 = call i8* @strdup(i32* %81)
  %83 = bitcast i8* %82 to i32*
  %84 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %85 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %84, i32 0, i32 4
  store i32* %83, i32** %85, align 8
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 1
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %78, %60, %55
  %89 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %90 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %89, i32 0, i32 3
  %91 = load i32*, i32** %90, align 8
  %92 = icmp ne i32* %91, null
  br i1 %92, label %93, label %123

93:                                               ; preds = %88
  %94 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %95 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %98 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = icmp ne i32* %96, %99
  br i1 %100, label %101, label %123

101:                                              ; preds = %93
  %102 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %103 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %102, i32 0, i32 3
  %104 = load i32*, i32** %103, align 8
  %105 = icmp ne i32* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %108 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @free(i32* %109)
  br label %111

111:                                              ; preds = %106, %101
  %112 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %113 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %112, i32 0, i32 3
  store i32* null, i32** %113, align 8
  %114 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %115 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = call i8* @strdup(i32* %116)
  %118 = bitcast i8* %117 to i32*
  %119 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %120 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %119, i32 0, i32 3
  store i32* %118, i32** %120, align 8
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 1
  store i32 1, i32* %122, align 8
  br label %123

123:                                              ; preds = %111, %93, %88
  %124 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %125 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %156

128:                                              ; preds = %123
  %129 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %130 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %129, i32 0, i32 2
  %131 = load i32*, i32** %130, align 8
  %132 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %133 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %132, i32 0, i32 2
  %134 = load i32*, i32** %133, align 8
  %135 = icmp ne i32* %131, %134
  br i1 %135, label %136, label %156

136:                                              ; preds = %128
  %137 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %138 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %137, i32 0, i32 2
  %139 = load i32*, i32** %138, align 8
  %140 = icmp ne i32* %139, null
  br i1 %140, label %141, label %146

141:                                              ; preds = %136
  %142 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %143 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @free(i32* %144)
  br label %146

146:                                              ; preds = %141, %136
  %147 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %148 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = call i8* @strdup(i32* %149)
  %151 = bitcast i8* %150 to i32*
  %152 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %153 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %152, i32 0, i32 2
  store i32* %151, i32** %153, align 8
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i32 0, i32 1
  store i32 1, i32* %155, align 8
  br label %156

156:                                              ; preds = %146, %128, %123
  %157 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %158 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %189

161:                                              ; preds = %156
  %162 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %163 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %162, i32 0, i32 1
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %166 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %165, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = icmp ne i32* %164, %167
  br i1 %168, label %169, label %189

169:                                              ; preds = %161
  %170 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %171 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %179

174:                                              ; preds = %169
  %175 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %176 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %175, i32 0, i32 1
  %177 = load i32*, i32** %176, align 8
  %178 = call i32 @free(i32* %177)
  br label %179

179:                                              ; preds = %174, %169
  %180 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %181 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %180, i32 0, i32 1
  %182 = load i32*, i32** %181, align 8
  %183 = call i8* @strdup(i32* %182)
  %184 = bitcast i8* %183 to i32*
  %185 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %186 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %185, i32 0, i32 1
  store i32* %184, i32** %186, align 8
  %187 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %187, i32 0, i32 1
  store i32 1, i32* %188, align 8
  br label %189

189:                                              ; preds = %179, %161, %156
  %190 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %191 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = icmp ne i32* %192, null
  br i1 %193, label %194, label %222

194:                                              ; preds = %189
  %195 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %196 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %195, i32 0, i32 0
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %199 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = icmp ne i32* %197, %200
  br i1 %201, label %202, label %222

202:                                              ; preds = %194
  %203 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %204 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = icmp ne i32* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %202
  %208 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %209 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %208, i32 0, i32 0
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @free(i32* %210)
  br label %212

212:                                              ; preds = %207, %202
  %213 = load %struct.playlist_entry*, %struct.playlist_entry** %6, align 8
  %214 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = call i8* @strdup(i32* %215)
  %217 = bitcast i8* %216 to i32*
  %218 = load %struct.playlist_entry*, %struct.playlist_entry** %7, align 8
  %219 = getelementptr inbounds %struct.playlist_entry, %struct.playlist_entry* %218, i32 0, i32 0
  store i32* %217, i32** %219, align 8
  %220 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %220, i32 0, i32 1
  store i32 1, i32* %221, align 8
  br label %222

222:                                              ; preds = %16, %212, %194, %189
  ret void
}

declare dso_local i32 @free(i32*) #1

declare dso_local i8* @strdup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
