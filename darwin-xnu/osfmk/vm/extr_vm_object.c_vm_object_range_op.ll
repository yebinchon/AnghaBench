; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_range_op.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_object.c_vm_object_range_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64, i64, i32, i64, i64 }
%struct.TYPE_15__ = type { i64, i64 }

@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@UPL_ROP_PRESENT = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4
@KERN_INVALID_OBJECT = common dso_local global i32 0, align 4
@PAGE_MASK_64 = common dso_local global i64 0, align 8
@VM_PAGE_NULL = common dso_local global %struct.TYPE_14__* null, align 8
@UPL_ROP_DUMP = common dso_local global i32 0, align 4
@THREAD_UNINT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@UPL_ROP_ABSENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vm_object_range_op(%struct.TYPE_15__* %0, i64 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = sub nsw i64 %14, %15
  %17 = icmp sgt i64 %16, -1
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %19, i32* %6, align 4
  br label %182

20:                                               ; preds = %5
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %51

25:                                               ; preds = %20
  %26 = load i64*, i64** %11, align 8
  %27 = icmp ne i64* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @UPL_ROP_PRESENT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i64*, i64** %11, align 8
  store i64 0, i64* %34, align 8
  br label %48

35:                                               ; preds = %28
  %36 = load i64, i64* %9, align 8
  %37 = load i64, i64* %8, align 8
  %38 = sub nsw i64 %36, %37
  %39 = load i64*, i64** %11, align 8
  store i64 %38, i64* %39, align 8
  %40 = load i64*, i64** %11, align 8
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = load i64, i64* %8, align 8
  %44 = sub nsw i64 %42, %43
  %45 = icmp eq i64 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %35, %33
  br label %49

49:                                               ; preds = %48, %25
  %50 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %50, i32* %6, align 4
  br label %182

51:                                               ; preds = %20
  %52 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %53 = call i32 @vm_object_lock(%struct.TYPE_15__* %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %60 = call i32 @vm_object_unlock(%struct.TYPE_15__* %59)
  %61 = load i32, i32* @KERN_INVALID_OBJECT, align 4
  store i32 %61, i32* %6, align 4
  br label %182

62:                                               ; preds = %51
  %63 = load i64, i64* %8, align 8
  %64 = load i64, i64* @PAGE_MASK_64, align 8
  %65 = xor i64 %64, -1
  %66 = and i64 %63, %65
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %145, %93, %62
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %149

71:                                               ; preds = %67
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %73 = load i64, i64* %12, align 8
  %74 = call %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__* %72, i64 %73)
  store %struct.TYPE_14__* %74, %struct.TYPE_14__** %13, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** @VM_PAGE_NULL, align 8
  %77 = icmp ne %struct.TYPE_14__* %75, %76
  br i1 %77, label %78, label %138

78:                                               ; preds = %71
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @UPL_ROP_DUMP, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %120

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %96 = load i32, i32* @THREAD_UNINT, align 4
  %97 = call i32 @PAGE_SLEEP(%struct.TYPE_15__* %94, %struct.TYPE_14__* %95, i32 %96)
  br label %67

98:                                               ; preds = %88
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %98
  %104 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %105 = load i32, i32* @FALSE, align 4
  %106 = call i32 @vm_pageout_steal_laundry(%struct.TYPE_14__* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %98
  %108 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %109 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @TRUE, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %115 = call i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__* %114)
  %116 = call i32 @pmap_disconnect(i32 %115)
  br label %117

117:                                              ; preds = %113, %107
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %119 = call i32 @VM_PAGE_FREE(%struct.TYPE_14__* %118)
  br label %137

120:                                              ; preds = %78
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* @UPL_ROP_ABSENT, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %136

125:                                              ; preds = %120
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %135

130:                                              ; preds = %125
  %131 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %130, %125
  br label %149

136:                                              ; preds = %130, %120
  br label %137

137:                                              ; preds = %136, %117
  br label %145

138:                                              ; preds = %71
  %139 = load i32, i32* %10, align 4
  %140 = load i32, i32* @UPL_ROP_PRESENT, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %138
  br label %149

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %137
  %146 = load i64, i64* @PAGE_SIZE, align 8
  %147 = load i64, i64* %12, align 8
  %148 = add nsw i64 %147, %146
  store i64 %148, i64* %12, align 8
  br label %67

149:                                              ; preds = %143, %135, %67
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %151 = call i32 @vm_object_unlock(%struct.TYPE_15__* %150)
  %152 = load i64*, i64** %11, align 8
  %153 = icmp ne i64* %152, null
  br i1 %153, label %154, label %180

154:                                              ; preds = %149
  %155 = load i64, i64* %12, align 8
  %156 = load i64, i64* %9, align 8
  %157 = icmp sgt i64 %155, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load i64, i64* %9, align 8
  store i64 %159, i64* %12, align 8
  br label %160

160:                                              ; preds = %158, %154
  %161 = load i64, i64* %12, align 8
  %162 = load i64, i64* %8, align 8
  %163 = icmp sgt i64 %161, %162
  br i1 %163, label %164, label %177

164:                                              ; preds = %160
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* %8, align 8
  %167 = sub nsw i64 %165, %166
  %168 = load i64*, i64** %11, align 8
  store i64 %167, i64* %168, align 8
  %169 = load i64*, i64** %11, align 8
  %170 = load i64, i64* %169, align 8
  %171 = load i64, i64* %12, align 8
  %172 = load i64, i64* %8, align 8
  %173 = sub nsw i64 %171, %172
  %174 = icmp eq i64 %170, %173
  %175 = zext i1 %174 to i32
  %176 = call i32 @assert(i32 %175)
  br label %179

177:                                              ; preds = %160
  %178 = load i64*, i64** %11, align 8
  store i64 0, i64* %178, align 8
  br label %179

179:                                              ; preds = %177, %164
  br label %180

180:                                              ; preds = %179, %149
  %181 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %181, i32* %6, align 4
  br label %182

182:                                              ; preds = %180, %58, %49, %18
  %183 = load i32, i32* %6, align 4
  ret i32 %183
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_object_lock(%struct.TYPE_15__*) #1

declare dso_local i32 @vm_object_unlock(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_14__* @vm_page_lookup(%struct.TYPE_15__*, i64) #1

declare dso_local i32 @PAGE_SLEEP(%struct.TYPE_15__*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @vm_pageout_steal_laundry(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @pmap_disconnect(i32) #1

declare dso_local i32 @VM_PAGE_GET_PHYS_PAGE(%struct.TYPE_14__*) #1

declare dso_local i32 @VM_PAGE_FREE(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
