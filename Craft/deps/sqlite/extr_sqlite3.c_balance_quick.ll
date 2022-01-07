; ModuleID = '/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_balance_quick.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/sqlite/extr_sqlite3.c_balance_quick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i64, i32*, i64, i32, i32, i32, i32**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4
@PTF_INTKEY = common dso_local global i32 0, align 4
@PTF_LEAFDATA = common dso_local global i32 0, align 4
@PTF_LEAF = common dso_local global i32 0, align 4
@ISAUTOVACUUM = common dso_local global i64 0, align 8
@PTRMAP_BTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_15__*, i32*)* @balance_quick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @balance_quick(%struct.TYPE_15__* %0, %struct.TYPE_15__* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %16, i32 0, i32 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %17, align 8
  store %struct.TYPE_16__* %18, %struct.TYPE_16__** %8, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 8
  %21 = load %struct.TYPE_16__*, %struct.TYPE_16__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sqlite3_mutex_held(i32 %23)
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @sqlite3PagerIswriteable(i32 %28)
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 1
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %3
  %42 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %42, i32* %4, align 4
  br label %179

43:                                               ; preds = %3
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %45 = call i32 @allocateBtreePage(%struct.TYPE_16__* %44, %struct.TYPE_15__** %9, i32* %11, i32 0, i32 0)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* @SQLITE_OK, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %177

49:                                               ; preds = %43
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %12, align 8
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %52, i32 0, i32 7
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 0
  %56 = load i32*, i32** %55, align 8
  store i32* %56, i32** %13, align 8
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %58 = load i32*, i32** %13, align 8
  %59 = call i64 @cellSizePtr(%struct.TYPE_15__* %57, i32* %58)
  store i64 %59, i64* %14, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sqlite3PagerIswriteable(i32 %62)
  %64 = call i32 @assert(i32 %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @PTF_INTKEY, align 4
  %71 = load i32, i32* @PTF_LEAFDATA, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @PTF_LEAF, align 4
  %74 = or i32 %72, %73
  %75 = icmp eq i32 %69, %74
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %79 = load i32, i32* @PTF_INTKEY, align 4
  %80 = load i32, i32* @PTF_LEAFDATA, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @PTF_LEAF, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @zeroPage(%struct.TYPE_15__* %78, i32 %83)
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %86 = call i32 @assemblePage(%struct.TYPE_15__* %85, i32 1, i32** %13, i64* %14)
  %87 = load i64, i64* @ISAUTOVACUUM, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %107

89:                                               ; preds = %49
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* @PTRMAP_BTREE, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ptrmapPut(%struct.TYPE_16__* %90, i32 %91, i32 %92, i32 %95, i32* %10)
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp sgt i64 %97, %100
  br i1 %101, label %102, label %106

102:                                              ; preds = %89
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %104 = load i32*, i32** %13, align 8
  %105 = call i32 @ptrmapPutOvflPtr(%struct.TYPE_15__* %103, i32* %104, i32* %10)
  br label %106

106:                                              ; preds = %102, %89
  br label %107

107:                                              ; preds = %106, %49
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = sub nsw i64 %111, 1
  %113 = call i32* @findCell(%struct.TYPE_15__* %108, i64 %112)
  store i32* %113, i32** %13, align 8
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 9
  store i32* %115, i32** %15, align 8
  br label %116

116:                                              ; preds = %128, %107
  %117 = load i32*, i32** %13, align 8
  %118 = getelementptr inbounds i32, i32* %117, i32 1
  store i32* %118, i32** %13, align 8
  %119 = load i32, i32* %117, align 4
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  %123 = load i32*, i32** %13, align 8
  %124 = load i32*, i32** %15, align 8
  %125 = icmp ult i32* %123, %124
  br label %126

126:                                              ; preds = %122, %116
  %127 = phi i1 [ false, %116 ], [ %125, %122 ]
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  br label %116

129:                                              ; preds = %126
  %130 = load i32*, i32** %13, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 9
  store i32* %131, i32** %15, align 8
  br label %132

132:                                              ; preds = %146, %129
  %133 = load i32*, i32** %13, align 8
  %134 = getelementptr inbounds i32, i32* %133, i32 1
  store i32* %134, i32** %13, align 8
  %135 = load i32, i32* %133, align 4
  %136 = load i32*, i32** %12, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %12, align 8
  store i32 %135, i32* %136, align 4
  %138 = and i32 %135, 128
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %132
  %141 = load i32*, i32** %13, align 8
  %142 = load i32*, i32** %15, align 8
  %143 = icmp ult i32* %141, %142
  br label %144

144:                                              ; preds = %140, %132
  %145 = phi i1 [ false, %132 ], [ %143, %140 ]
  br i1 %145, label %146, label %147

146:                                              ; preds = %144
  br label %132

147:                                              ; preds = %144
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i32*, i32** %7, align 8
  %153 = load i32*, i32** %12, align 8
  %154 = load i32*, i32** %7, align 8
  %155 = ptrtoint i32* %153 to i64
  %156 = ptrtoint i32* %154 to i64
  %157 = sub i64 %155, %156
  %158 = sdiv exact i64 %157, 4
  %159 = trunc i64 %158 to i32
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 5
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @insertCell(%struct.TYPE_15__* %148, i64 %151, i32* %152, i32 %159, i32 0, i32 %162, i32* %10)
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 2
  %166 = load i32*, i32** %165, align 8
  %167 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %167, i32 0, i32 4
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, 8
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %166, i64 %171
  %173 = load i32, i32* %11, align 4
  %174 = call i32 @put4byte(i32* %172, i32 %173)
  %175 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %176 = call i32 @releasePage(%struct.TYPE_15__* %175)
  br label %177

177:                                              ; preds = %147, %43
  %178 = load i32, i32* %10, align 4
  store i32 %178, i32* %4, align 4
  br label %179

179:                                              ; preds = %177, %41
  %180 = load i32, i32* %4, align 4
  ret i32 %180
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3_mutex_held(i32) #1

declare dso_local i32 @sqlite3PagerIswriteable(i32) #1

declare dso_local i32 @allocateBtreePage(%struct.TYPE_16__*, %struct.TYPE_15__**, i32*, i32, i32) #1

declare dso_local i64 @cellSizePtr(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @zeroPage(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @assemblePage(%struct.TYPE_15__*, i32, i32**, i64*) #1

declare dso_local i32 @ptrmapPut(%struct.TYPE_16__*, i32, i32, i32, i32*) #1

declare dso_local i32 @ptrmapPutOvflPtr(%struct.TYPE_15__*, i32*, i32*) #1

declare dso_local i32* @findCell(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @insertCell(%struct.TYPE_15__*, i64, i32*, i32, i32, i32, i32*) #1

declare dso_local i32 @put4byte(i32*, i32) #1

declare dso_local i32 @releasePage(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
